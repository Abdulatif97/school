<?php
namespace App\Repositories;

use Illuminate\Support\Facades\Log;
use Lab2view\RepositoryGenerator\BaseRepository;

use App\Models\Role;

class RoleRepository extends BaseRepository
{
    public function __construct(Role $model, PermissionRepository $permissionRepository)
    {
        parent::__construct($model);
        $this->permissionRepository = $permissionRepository;
    }

    public function create($requestData) {

        try {
            $role = $this->store($requestData);
            $role->permissions()->detach();
            $permission = $requestData['permissions'];

            if (isset($permission)) {
                foreach ($permission as $permission_name) {
                    $permission = $this->permissionRepository->getByAttribute('name',$permission_name);
                    $role->givePermissionTo($permission);
                }
            }
            return true;

        } catch (\Exception $exc) {
            Log::error($exc->getMessage(), $exc->getTrace());
            return false;
        }

    }


    public function edit($id, $requestData) {

        try {
            $role = $this->update($id, $requestData);
            $role->permissions()->detach();
            $permission = $requestData['permissions'];

            if (isset($permission)) {
                foreach ($permission as $permission_name) {
                    $permission = $this->permissionRepository->getByAttribute('name',$permission_name);
                    $role->givePermissionTo($permission);
                }
            }
            return true;

        } catch (\Exception $exc) {
            Log::error($exc->getMessage(), $exc->getTrace());
            return false;
        }

    }

    public function getUsersByRole($roleName) {
        return $this->model->whereName($roleName)->first();
    }
}

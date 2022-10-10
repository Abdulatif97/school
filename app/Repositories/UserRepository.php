<?php
namespace App\Repositories;

use Illuminate\Support\Facades\Log;
use Lab2view\RepositoryGenerator\BaseRepository;

use App\Models\User;

class UserRepository extends BaseRepository
{
    public function __construct(User $model)
    {
        parent::__construct($model);
    }

    public function create($data) {


        try {
            $user = $this->store($data);

            foreach ($data['roles'] as $role) {
                $user->assignRole($role);
            }
            return true;

        } catch (\Exception $exc) {
            Log::error($exc->getMessage(), $exc->getTrace());
            return false;
        }

    }

    public function edit($id,$data) {


        try {
            $user = $this->update($id, $data);
            $user->roles()->detach();

            foreach ($data['roles'] as $role) {
                $user->assignRole($role);
            }
            return true;

        } catch (\Exception $exc) {
            Log::error($exc->getMessage(), $exc->getTrace());
            return false;
        }

    }

}

<?php
namespace App\Repositories;

use Lab2view\RepositoryGenerator\BaseRepository;

use App\Models\Group;

class GroupRepository extends BaseRepository
{
    public function __construct(Group $model)
    {
        parent::__construct($model);
    }

    public function changeStudent($id, $studentIds) {

        $group = $this->model->find($id);
        if($studentIds == null){return;}

        $group->students()->sync($studentIds);
    }
}

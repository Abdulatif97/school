<?php
namespace App\Repositories;

use Lab2view\RepositoryGenerator\BaseRepository;

use App\Models\HasRoles;

class HasRolesRepository extends BaseRepository
{
    public function __construct(HasRoles $model)
    {
        parent::__construct($model);
    }
}

<?php
namespace App\Repositories;

use Lab2view\RepositoryGenerator\BaseRepository;

use App\Models\Subject;

class SubjectRepository extends BaseRepository
{
    public function __construct(Subject $model)
    {
        parent::__construct($model);
    }
}

<?php
namespace App\Repositories;

use Lab2view\RepositoryGenerator\BaseRepository;

use App\Models\Student;

class StudentRepository extends BaseRepository
{
    /**
     * @var RoleRepository
     */
    private $roleRepository;

    public function __construct(Student $model, RoleRepository $roleRepository)
    {
        parent::__construct($model);
        $this->roleRepository = $roleRepository;
    }

    public function getStudents($pluck = []) {
       $students = $this->roleRepository->getUsersByRole('student')->users ?? [];
       if (count($pluck) && count($students))
           $students =  $students->pluck('name', 'id');
        return $students;
    }
}

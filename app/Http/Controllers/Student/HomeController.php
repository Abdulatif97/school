<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Repositories\StudentRepository;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * @var StudentRepository
     */
    private $studentRepository;

    public function __construct(StudentRepository $studentRepository)
    {
        $this->studentRepository = $studentRepository;
    }
    public function index() {
        $student = $this->studentRepository->getById(auth()->id());
        return view('student.dashboard', compact('student'));
    }
}

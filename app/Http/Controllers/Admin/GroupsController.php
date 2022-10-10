<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\Models\Group;
use App\Models\Role;
use App\Models\User;
use App\Repositories\GroupRepository;
use App\Repositories\RatingRepository;
use App\Repositories\RoleRepository;
use App\Repositories\StudentRepository;
use App\Repositories\SubjectRepository;
use App\Repositories\UserRepository;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class GroupsController extends Controller
{
    private $groupRepository,$studentRepository, $roleRepository;
    /**
     * @var SubjectRepository
     */
    private $subjectRepository;
    /**
     * @var RatingRepository
     */
    private $ratingRepository;

    public function __construct(GroupRepository $groupRepository,
                                StudentRepository $studentRepository,
                                RoleRepository $roleRepository,
                                SubjectRepository $subjectRepository,
                                RatingRepository $ratingRepository
    )
    {
        $this->groupRepository = $groupRepository;
        $this->studentRepository = $studentRepository;
        $this->roleRepository = $roleRepository;
        $this->subjectRepository = $subjectRepository;
        $this->ratingRepository = $ratingRepository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        $role = Auth::user()->getRole();
        $groups = $role == 'teacher' ? $this->groupRepository->search('teacher_id',\auth()->id()) : $this->groupRepository->getAll();
        return view('admin.groups.index', compact('groups'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        $teachers =$this->roleRepository->getUsersByRole('teacher')->users->pluck('name', 'id') ?? [];
;
        return view('admin.groups.create',compact('teachers'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        $this->validate($request, [
			'name' => 'required'
		]);
        $this->groupRepository->store($request->all());
        return redirect('admin/groups')->with('flash_message', 'Group added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function show($id)
    {
        $students = $this->studentRepository->getStudents(['name', 'id']);
        $group = $this->groupRepository->getById($id);
        $subjects = $this->subjectRepository->getAll();
        return view('admin.groups.show', compact('group','students', 'subjects'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function edit($id)
    {
        $teachers =$this->roleRepository->getUsersByRole('teacher')->users->pluck('name', 'id') ?? [];
        $group = $this->groupRepository->getById($id);
        return view('admin.groups.edit', compact('group','teachers'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
			'name' => 'required'
		]);
        $this->groupRepository->update($id, $request->all());
        return redirect('admin/groups')->with('flash_message', 'Group updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function destroy($id)
    {
        $this->groupRepository->destroy($id);
        return redirect('admin/groups')->with('flash_message', 'Group deleted!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function addStudent(Request $request): JsonResponse
    {
        $this->groupRepository->changeStudent($request->group_id,$request->ids);
        return response()->json(['message' => 'Students added']);
    }
}

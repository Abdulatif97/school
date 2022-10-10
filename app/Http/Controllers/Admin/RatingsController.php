<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\Models\Rating;
use App\Repositories\GroupRepository;
use App\Repositories\RatingRepository;
use Illuminate\Http\Request;

class RatingsController extends Controller
{

    /**
     * @var RatingRepository
     */
    private $ratingRepository;
    /**
     * @var GroupRepository
     */
    private $groupRepository;

    public function __construct(RatingRepository $ratingRepository, GroupRepository $groupRepository)
    {
        $this->ratingRepository = $ratingRepository;
        $this->groupRepository = $groupRepository;
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */
    public function index(Request $request)
    {
        $ratings = $this->ratingRepository->getAll();
        $groups = $this->groupRepository->getAll();
        return view('admin.ratings.index', compact('ratings','groups'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('admin.ratings.create');
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
			'group_id' => 'required',
			'grade' => 'required',
			'student_id' => 'required',
			'date' => 'required',
		]);
        $this->ratingRepository->createOrUpdate(
            $request->only(['group_id','student_id','subject_id','date']), $request->only(['grade']));
        if ($request->wantsJson()) {
            return response()->json(['flash_message' => 'Rating added!']);
        }
        return redirect('admin/ratings')->with('flash_message', 'Rating added!');
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
        $rating = $this->ratingRepository->getById($id);

        return view('admin.ratings.show', compact('rating'));
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
        $rating = $this->ratingRepository->getById($id);

        return view('admin.ratings.edit', compact('rating'));
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
			'group_id' => 'required',
			'grade' => 'required',
			'student_id' => 'required'
		]);
        $this->ratingRepository->update($id,$request->all());
        return redirect('admin/ratings')->with('flash_message', 'Rating updated!');
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
        $this->ratingRepository->destroy($id);
        return redirect('admin/ratings')->with('flash_message', 'Rating deleted!');
    }
}

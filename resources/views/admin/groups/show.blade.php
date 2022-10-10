@extends('layouts.backend')

@section('content')
    <div class="container">
        <div class="row">
            @include('admin.sidebar')

            <div class="col-md-9">
                <div class="card mb-4">
                    <div class="card-header">Group {{ $group->id }}</div>
                    <div class="card-body">

                        <a href="{{ url('/admin/groups') }}" title="Back"><button class="btn btn-warning btn-sm"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</button></a>
                        @can('edit_group')
                        <a href="{{ url('/admin/groups/' . $group->id . '/edit') }}" title="Edit Group"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button></a>
                        @endcan
                    @can('delete_group')
                        {!! Form::open([
                            'method'=>'DELETE',
                            'url' => ['admin/groups', $group->id],
                            'style' => 'display:inline'
                        ]) !!}

                            {!! Form::button('<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', array(
                                    'type' => 'submit',
                                    'class' => 'btn btn-danger btn-sm',
                                    'title' => 'Delete Group',
                                    'onclick'=>'return confirm("Confirm delete?")'
                            ))!!}
                        {!! Form::close() !!}
                        @endcan
                        <br/>
                        <br/>

                        <div class="table-responsive">
                            <table class="table border">
                                <tbody>
                                    <tr>
                                        <th>ID</th><td>{{ $group->id }}</td>
                                    </tr>
                                    <tr><th> Name </th><td> {{ $group->name }} </td></tr>
                                    <tr><th> Description </th><td> {{ $group->description }} </td></tr>
                                    <tr><th> Teacher </th><td> {{ $group->getTeachername() }} </td></tr>
                                    <tr><th> Students </th><td> {{ $group->students->count() }} </td></tr>
                                </tbody>
                            </table>
                        </div>



                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card-header">Студенты</div>

                    <div class="card-body">
                        @can('add_student_to_group')
                        <form method="post"  id="add_student">
                            {{ csrf_field() }}
                            <input type="hidden" name="group_id" value="{{$group->id}}">
                            <div class="form-group">
                                {!! Form::label('teacher_id', 'Добавить студентов', ['class' => 'control-label']) !!}
                                {!! Form::select('ids[]', $students, $group->students , ['class' => 'form-control js-basic', 'required' => 'required', 'multiple' => true]) !!}
                                {!! $errors->first('teacher_id', '<p class="help-block">:message</p>') !!}
                            </div>
                            <button type="submit" class="btn btn-success">Submit</button>
                        </form>
                        @endcan
                        <br>
                        <div class="table-responsive">
                            <table class="table border">
                                <thead>
                                <th>id</th>
                                <th>name</th>
                                </thead>
                                <tbody>
                                @foreach($group->students as $student)
                                    <tr>
                                        <td>{{ $student->id }}</td>
                                        <td>{{ $student->name }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>

                    </div>



                </div>
                @can('evaluate_a_student')
                    <div class="card mb-4">
                    <div class="card-header">Предметы </div>

                    <div class="card-body">
                            <div class="accordion" id="accordionExample">
                                @foreach($subjects as $subject)
                                    <div class="card">
                                    <div class="card-header" id="{{'heading' . $subject->id}}">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="{{'#heading0' . $subject->id}}" aria-expanded="true" aria-controls="{{'heading0' . $subject->id}}">
                                                {{$subject->name}}
                                            </button>
                                        </h5>
                                    </div>

                                    <div id="{{'heading0' . $subject->id}}" class="collapse" aria-labelledby="{{'heading' . $subject->id}}" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <table class="table">
                                                <thead>
                                                <th>
                                                    Студенты
                                                </th>
                                                <th>
                                                    Оценка
                                                </th>

                                                </thead>
                                                <tbody>
                                                @foreach($group->students as $student)
                                                    <tr>
                                                        <td>
                                                             {{"#" .$student->id . ' ' . $student->name}}
                                                        </td>
                                                        <td>
                                                            <button class="btn btn-primary gradeBtn" data-toggle="modal" data-target="#exampleModalCenter"
                                                                    data-subject-id="{{$subject->id}}"
                                                                    data-student-id="{{$student->id}}"
                                                                    data-subject-name="{{$subject->name}}"
                                                                    data-student-name="{{$student->name}}"
                                                            >+</button>

                                                        </td>
                                                    </tr>
                                                @endforeach
                                                </tbody>
                                            </table>

                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form method="post" id="changeGrade">
                                            @csrf
                                            <input type="hidden" name="group_id" value="{{$group->id}}">
                                            <input type="hidden" name="student_id" id="student_id" >
                                            <input type="hidden" name="subject_id" id="subject_id" >
                                            <input type="hidden" name="group_id" value="{{$group->id}}">
                                                <p class="  student-name">Cras justo odio</p>
                                                <p class=" subject-name">Dapibus ac facilisis in</p>
                                            <lable for="gradeDate">Дата</lable>
                                            <input type="date" class="form-control mb-2" required name="date" id="gradeDate">

                                            <lable for="gradeList">Оценка </lable>
                                            <select name="grade" class="form-control mb-2" required id="gradeList">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                            </select>
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                </div>
                @endcan
                <div class="card mb-4">
                    <div class="card-header">Оценки  </div>

                    <div class="card-body">

                       <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                @foreach($subjects as $subject)
                                    <th scope="col">{{$subject->name}}</th>
                                @endforeach

                            </tr>
                            </thead>
                            <tbody>
                            @foreach($group->students as $student)
                            <tr>
                                <th scope="row">{{$student->name}}</th>
                                @foreach($subjects as $subject)
                                    <th scope="col">{{$student->getMiddleGrade($group->id, $subject->id)}}</th>
                                @endforeach
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>



                </div>

            </div>
        </div>
    </div>
@endsection
@section('scripts')
    <script>
        $(document).ready(function() {

            $('#accordionExample .gradeBtn').on('click',function () {
                $('.student-name').html("<b>Студент:</b> " + $(this).data('student-name'))
                $('.subject-name').html("<b>Предмет:</b> " + $(this).data('subject-name'))
                $('#gradeDate').val('')
                $('#gradeList').val('')
                $('#subject_id').val($(this).data('subject-id'))
                $('#student_id').val($(this).data('student-id'))
            });

            $('form#changeGrade').on('submit', function(e) {
                e.preventDefault();
                $.ajax({
                    url: '/admin/ratings',
                    method: 'POST',
                    data: new FormData(this),
                    dataType: 'JSON',
                    contentType: false,
                    cache: false,
                    processData: false,
                    success: function(data)
                    {
                        console.log('success',data)
                        location.reload(true);
                    },
                    error: function (data) {
                        console.log('error',data)
                    }
                });
            });


            $('form#add_student').on('submit', function(e) {
                e.preventDefault();
                $.ajax({
                    url: '/admin/group/add-student',
                    method: 'POST',
                    data: new FormData(this),
                    dataType: 'JSON',
                    contentType: false,
                    cache: false,
                    processData: false,
                    success: function(data)
                    {
                        console.log('success',data)
                        location.reload(true);
                    },
                    error: function (data) {
                        console.log('error',data)
                    }
                });
            });


            $('.js-basic').select2();
        });
    </script>
@endsection

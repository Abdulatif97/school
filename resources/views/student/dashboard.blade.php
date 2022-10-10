@extends('layouts.backend')

@section('content')
    <div class="container">
        <div class="row">
            @include('student.sidebar')

            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">Dashboard</div>

                    <div class="card-body">
                        @foreach($student->group as $groupItem)
                        <div class="card mb-3"  style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">Group: {{$groupItem->name}}</h5>
                                <p class="card-text">{{$groupItem->description}}</p>
                            </div>
                        </div>
                        @endforeach
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Предмет</th>
                                <th scope="col">Учитель</th>
                                <th scope="col">Оценка </th>
                                <th scope="col">Дата</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($student->grades as $grade)
                                <tr>
                                    <td>{{$grade->subject->name}}</td>
                                    <td>{{$grade->group->teacher->name}}</td>
                                    <td>{{$grade->grade}}</td>
                                    <td>{{$grade->date}}</td>
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

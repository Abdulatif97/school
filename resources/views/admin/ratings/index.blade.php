@extends('layouts.backend')

@section('content')
    <div class="container">
        <div class="row">
            @include('admin.sidebar')

            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">Оценки</div>
                    <div class="card-body">
{{--                        <a href="{{ url('/admin/ratings/create') }}" class="btn btn-success btn-sm" title="Add New Rating">--}}
{{--                            <i class="fa fa-plus" aria-hidden="true"></i> Add New--}}
{{--                        </a>--}}
                        <table border="0" cellspacing="5" cellpadding="5">
                            <tbody><tr>
                                <td>Группы:</td>
                                <td>
                                    <select name="overdue"  class="form-control" id="groups">
                                        <option value="*">Выбирать..</option>
                                        @foreach($groups as $group)
                                        <option value="{{$group->name}}">{{$group->name}}</option>
                                        @endforeach
                                    </select>
                                    <input id="myFilterDate" type="hidden" data-ison="false" name="" value="">

                                </td>
                            </tr>
                            </tbody></table>
                        <br/>
                        <br/>
                        <div class="table-responsive ">
                            <table id="example2" class="display " style="width:100%">
                                <thead>
                                <tr>
                                    <th>Гр. макс. оценка</th>
                                    <th>Age</th>
                                    <th>Start date</th>
                                    <th>Гр. мин. оценка</th>
                                    <th>Пред. макс. оценка </th>
                                    <th>Пред. сред. оценка </th>
                                    <th>Пред. мин. оценка </th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($ratings->groupBy('group_id') as $key => $ratingGroups)
                                   @foreach($ratingGroups->groupBy('subject_id') as $key1 => $ratingGroupSubjects)
                                       @php
                                        $item = $ratingGroupSubjects->first();
                                       @endphp
                                                <tr class="text-center">
                                                    <td>{{ $ratingGroups->max('grade') }}</td>
                                                    <td>{{ $item->getSubjectName() }}</td>
                                                    <td>{{ $item->getGroupName() }}</td>
                                                    <td>{{ $ratingGroups->min('grade') }}</td>
                                                    <td>{{  $ratingGroupSubjects->max('grade') }}</td>
                                                    <td>{{  number_format($ratingGroupSubjects->avg('grade'), 2, '.', '') }}</td>
                                                    <td>{{ $ratingGroupSubjects->min('grade') }}</td>
                                                </tr>
                                    @endforeach
                                @endforeach

                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>Гр. макс. оценка</th>
                                    <th>Age</th>
                                    <th>Start date</th>
                                    <th>Гр. мин. оценка</th>
                                    <th>Пред. макс. оценка </th>
                                    <th>Пред. сред. оценка </th>
                                    <th>Пред. мин. оценка </th>
                                </tr>
                                </tfoot>
                            </table>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('scripts')
    <style>

    </style>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/datetime/1.1.2/css/dataTables.dateTime.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/rowgroup/1.2.0/css/rowGroup.dataTables.min.css">
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.2/moment.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/datetime/1.1.2/js/dataTables.dateTime.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/rowgroup/1.2.0/js/dataTables.rowGroup.min.js"></script>

    <script type="text/javascript" class="init">
        $(document).ready(function() {
            $('.js-basic').select2();
        });
        $(document).ready(function() {
            var mainTable =  $('#example2').DataTable( {
                order: [[2, 'asc'], [1, 'asc']],
                rowGroup: {
                    dataSrc: [ 2, 1 ]
                },
                columnDefs: [ {
                    targets: [ 1, 2 ],
                    visible: false
                } ]
            } );


            var table = $('#example').DataTable({
                "pageLength": 10,
                "stripeClasses": [],
            });

            $('#table-filter').on('change', function(){
                table.search(this.value).draw();
            });


            $.fn.dataTable.ext.search.push(
                function( settings, data, dataIndex ) {
                    var group = $('#groups').val(), tableGroup = data[2];
                    if (group === tableGroup || group == '*') {
                        return true;
                    }
                    return false;
                }
            );

            $('#groups').on('change', function () {
                mainTable.draw();
            });

        });
    </script>


@endsection
{{--                                @foreach($ratings->groupBy('group_id') as $key => $ratingGroups)--}}
{{--                                   @foreach($ratingGroups->groupBy('student_id') as $key => $ratingStudent)--}}
{{--                                       @foreach($ratingStudent as $ratingStudentKey => $rating)--}}
{{--                                           @if($ratingStudentKey == 0)--}}
{{--                                                <tr>--}}
{{--                                                    <td>{{ $rating->student->name }}</td>--}}
{{--                                                    <td>{{ $rating->subject->name }}</td>--}}
{{--                                                    <td>{{ $rating->group->name }}</td>--}}
{{--                                                    <td>{{ $rating->date }}</td>--}}
{{--                                                    <td>{{ number_format($rating->avg('grade'), 2, '.', '') }}</td>--}}
{{--                                                    <td>{{$rating->group->teacher->name}}</td>--}}
{{--                                                </tr>--}}
{{--                                           @endif--}}
{{--                                        @endforeach--}}
{{--                                    @endforeach--}}
{{--                                @endforeach--}}

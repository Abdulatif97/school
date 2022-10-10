@extends('layouts.backend')

@section('content')
    <div class="container">
        <div class="row">
            @include('admin.sidebar')

            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">Subjects</div>
                    <div class="card-body">
                        @can('add_subject')
                        <a href="{{ url('/admin/subjects/create') }}" class="btn btn-success btn-sm" title="Add New Subject">
                            <i class="fa fa-plus" aria-hidden="true"></i> Add New
                        </a>
                        @endcan
                        <br/>
                        <br/>
                        <div class="table-responsive">
                            <table class="table table-borderless">
                                <thead>
                                    <tr>
                                        <th>#</th><th>Name</th><th>Description</th><th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($subjects as $item)
                                    <tr>
                                        <td>{{  $item->id }}</td>
                                        <td>{{ $item->name }}</td><td>{{ $item->description }}</td>
                                        <td>
                                            @can('show_subject')
                                            <a href="{{ url('/admin/subjects/' . $item->id) }}" title="View Subject"><button class="btn btn-info btn-sm"><i class="fa fa-eye" aria-hidden="true"></i></button></a>
                                            @endcan
                                            @can('edit_subject')
                                                <a href="{{ url('/admin/subjects/' . $item->id . '/edit') }}" title="Edit Subject"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                                            @endcan
                                            @can('delete_subject')
                                                {!! Form::open([
                                                    'method' => 'DELETE',
                                                    'url' => ['/admin/subjects', $item->id],
                                                    'style' => 'display:inline'
                                                ]) !!}
                                                {!! Form::button('<i class="fa fa-trash-o" aria-hidden="true"></i>', array(
                                                        'type' => 'submit',
                                                        'class' => 'btn btn-danger btn-sm',
                                                        'title' => 'Delete Subject',
                                                        'onclick'=>'return confirm("Confirm delete?")'
                                                )) !!}
                                                {!! Form::close() !!}
                                            @endcan
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

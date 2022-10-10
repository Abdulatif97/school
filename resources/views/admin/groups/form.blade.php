<div class="form-group{{ $errors->has('name') ? 'has-error' : ''}}">
    {!! Form::label('name', 'Name', ['class' => 'control-label']) !!}
    {!! Form::text('name', null, ('required' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
    {!! $errors->first('name', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group{{ $errors->has('description') ? 'has-error' : ''}}">
    {!! Form::label('description', 'Description', ['class' => 'control-label']) !!}
    {!! Form::text('description', null, ('' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
    {!! $errors->first('description', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group{{ $errors->has('teacher_id') ? 'has-error' : ''}}">
    {!! Form::label('teacher_id', 'Teacher Id', ['class' => 'control-label']) !!}
    {!! Form::select('teacher_id', $teachers, isset($group) ? $group->teacher_id : null, ['class' => 'form-control js-basic', 'required' => 'required', 'multiple' => false]) !!}
    {!! $errors->first('teacher_id', '<p class="help-block">:message</p>') !!}
</div>


<div class="form-group">
    {!! Form::submit($formMode === 'edit' ? 'Update' : 'Create', ['class' => 'btn btn-primary']) !!}
</div>
@section('scripts')
    <script>
        $(document).ready(function() {
            $('.js-basic').select2();
        });
    </script>
@endsection

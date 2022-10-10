<div class="form-group{{ $errors->has('group_id') ? 'has-error' : ''}}">
    {!! Form::label('group_id', 'Group Id', ['class' => 'control-label']) !!}
    {!! Form::number('group_id', null, ('required' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
    {!! $errors->first('group_id', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group{{ $errors->has('grade') ? 'has-error' : ''}}">
    {!! Form::label('grade', 'Grade', ['class' => 'control-label']) !!}
    {!! Form::number('grade', null, ('required' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
    {!! $errors->first('grade', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group{{ $errors->has('student_id') ? 'has-error' : ''}}">
    {!! Form::label('student_id', 'Student Id', ['class' => 'control-label']) !!}
    {!! Form::number('student_id', null, ('required' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
    {!! $errors->first('student_id', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group{{ $errors->has('date') ? 'has-error' : ''}}">
    {!! Form::label('date', 'Date', ['class' => 'control-label']) !!}
    {!! Form::date('date', null, ('' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
    {!! $errors->first('date', '<p class="help-block">:message</p>') !!}
</div>


<div class="form-group">
    {!! Form::submit($formMode === 'edit' ? 'Update' : 'Create', ['class' => 'btn btn-primary']) !!}
</div>

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends User
{
    protected $table = 'users';

    public function group() {
        return $this->belongsToMany(
            Group::class,
            'group_students',
            'user_id',
            'group_id' );
    }

    public function user() {
        return $this->hasOne(User::class, 'id', 'id');
    }

    public function grades()
    {
        return $this->hasMany(Rating::class,'student_id');
    }


    public function role(){
        return $this->hasMany(RoleUser::class, 'user_id', 'id');
    }

    public function getMiddleGrade($group_id,$subject_id) {

        return $this->grades->where('subject_id', $subject_id)
                ->where('group_id', $group_id)
                ->avg('grade') ?? '-';
    }
}

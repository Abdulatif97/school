<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends User
{
    protected $table = 'users';
    public function group() {
        return  $this->hasOne(Group::class,'teacher_id');
    }

    public function user() {
        return $this->hasOne(User::class, 'id', 'id');
    }

    public function role(){
        return $this->hasMany(RoleUser::class, 'user_id', 'id');
    }
}

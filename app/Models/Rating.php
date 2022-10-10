<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\Traits\LogsActivity;

class Rating extends Model
{
    use LogsActivity;
    use SoftDeletes;


    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'ratings';

    /**
    * The database primary key value.
    *
    * @var string
    */
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['group_id', 'grade', 'student_id', 'date','subject_id'];


    public function group()
    {
        return $this->belongsTo(Group::class, 'group_id');
    }


    public function subject()
    {
        return $this->belongsTo(Subject::class, 'subject_id');
    }

    public function student()
    {
        return $this->belongsTo(Student::class, 'student_id');
    }

    public function getSubjectName() {
        return ($this->subject->name != null)
            ?   $this->subject->name
            :   'Предмет  удален';
    }

    public function getGroupName() {
        return ($this->group->name != null)
            ?   $this->group->name
            :   'Группа удалена';
    }

    /**
     * Change activity log event description
     *
     * @param string $eventName
     *
     * @return string
     */
    public function getDescriptionForEvent($eventName)
    {
        return __CLASS__ . " model has been {$eventName}";
    }
}

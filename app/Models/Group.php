<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\Traits\LogsActivity;

class Group extends Model
{
    use LogsActivity;
    use SoftDeletes,HasFactory;


    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'groups';

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
    protected $fillable = ['name', 'description', 'teacher_id'];

    public function teacher()
    {
        return $this->belongsTo(Employee::class,'teacher_id');
    }

    public function students() {
        return $this->belongsToMany(
            Student::class,
            'group_students',
            'group_id',
            'user_id'
        );
    }

    public function ratings()
    {
        return $this->hasMany(Rating::class);
    }


    public function getTeachername() {
        return ($this->teacher != null)
            ?   $this->teacher->name
            :   'Учитель удален';
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

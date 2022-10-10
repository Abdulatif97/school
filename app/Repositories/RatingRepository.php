<?php
namespace App\Repositories;

use Lab2view\RepositoryGenerator\BaseRepository;

use App\Models\Rating;

class RatingRepository extends BaseRepository
{
    public function __construct(Rating $model)
    {
        parent::__construct($model);
    }

    public function createOrUpdate($data, $grade) {
        $this->model->updateOrCreate($data,$grade);
    }
}

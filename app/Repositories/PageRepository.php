<?php
namespace App\Repositories;

use Lab2view\RepositoryGenerator\BaseRepository;

use App\Models\Page;

class PageRepository extends BaseRepository
{
    public function __construct(Page $model)
    {
        parent::__construct($model);
    }
}

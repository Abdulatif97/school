<?php

use App\Http\Controllers\Admin\SubjectsController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::get('admin', 'App\Http\Controllers\Admin\AdminController@index');
Route::resource('admin/roles', 'App\Http\Controllers\Admin\RolesController');
Route::resource('admin/permissions', 'App\Http\Controllers\Admin\PermissionsController');
Route::resource('admin/users', 'App\Http\Controllers\Admin\UsersController');
Route::resource('admin/pages', 'App\Http\Controllers\Admin\PagesController');
Route::resource('admin/subjects', 'App\Http\Controllers\Admin\SubjectsController');
Route::resource('admin/groups', 'App\Http\Controllers\Admin\GroupsController');
Route::resource('admin/ratings', 'App\Http\Controllers\Admin\RatingsController');
Route::resource('admin/activitylogs', 'App\Http\Controllers\Admin\ActivityLogsController')->only([
    'index', 'show', 'destroy'
]);
Route::resource('admin/settings', 'App\Http\Controllers\Admin\SettingsController');
Route::get('admin/generator', ['uses' => '\Appzcoder\LaravelAdmin\Controllers\ProcessController@getGenerator']);
Route::post('admin/generator', ['uses' => '\Appzcoder\LaravelAdmin\Controllers\ProcessController@postGenerator']);


//// Check role in route middleware
Route::group(['namespace' => 'App\Http\Controllers\Student', 'prefix' => 'student', 'middleware' => ['auth', 'role:student']], function () {
    Route::get('/dashboard', ['uses' => 'HomeController@index']);
});

//// Check role in route middleware
Route::group(['namespace' => 'App\Http\Controllers\Teacher', 'prefix' => 'teacher', 'middleware' => ['auth', 'role:teacher']], function () {
    Route::get('/dashboard', ['uses' => 'HomeController@index']);
});


Route::group(['namespace' => 'App\Http\Controllers\Admin', 'prefix' => 'admin', 'middleware' => ['auth', 'can:add_student_to_group']], function () {
    Route::post('group/add-student', ['uses' => 'GroupsController@addStudent']);

});




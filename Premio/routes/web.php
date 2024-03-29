<?php

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
    return view('premio');
})->name('premio');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/my-achievement', 'HomeController@myAchievement')->name('my-achievement');
Route::post('/my-achievement', 'HomeController@storeMyAchievement')->name('store-my-achievement');
Route::get('/my-achievement/{achievement}', 'HomeController@editAchievement')->name('edit-achievement');
Route::patch('/my-achievement/{achievement}', 'HomeController@updateAchievement')->name('update-achievement');
Route::delete('/my-achievement/{achievement}', 'HomeController@destroyAchievement')->name('destroy-achievement');
Route::get('/my-profile', 'HomeController@myProfile')->name('my-profile');
Route::patch('/my-profile/{student}', 'HomeController@updateMyProfile')->name('update-my-profile');
Route::get('/users/logout', 'Auth\LoginController@userLogout')->name('users.logout');

Route::prefix('/admin')->group(function () {
    Route::get('/login', 'Auth\AdminLoginController@showLoginForm')->name('admin.login');
    Route::post('/login', 'Auth\AdminLoginController@login')->name('admin.login.submit');
    Route::get('/', 'AdminController@index')->name('admin.home');
    Route::get('/logout', 'Auth\AdminLoginController@logout')->name('admin.logout');
    Route::get('/my-profile', 'AdminController@myprofile')->name('admin.my-profile');
    Route::patch('/my-profile/{admin}', 'AdminController@updateMyProfile')->name('admin.update-my-profile');

    // Grade-admin menu routes
    Route::get('/grade', 'AdminController@viewGrade')->name('admin.grade');
    Route::get('/create-grade', 'AdminController@createGrade')->name('admin.create-grade');
    Route::post('/store-grade', 'AdminController@storeGrade')->name('admin.store-grade');
    Route::get('/grade/{id}/edit', 'AdminController@editGrade')->name('admin.edit-grade');
    Route::patch('/grade/{id}', 'AdminController@updateGrade')->name('admin.update-grade');

    // GradeClasification-admin menu routes
    Route::get('grade-clasification', 'AdminController@viewGradeClasification')->name('admin.grade-clasification');
    Route::get('grade-clasification/{grade}', 'AdminController@viewGradeClasificationDetail')->name('admin.grade-clasification-detail');

    // Create Message
    Route::get('create-message/{student}', 'AdminController@createMessage')->name('admin.create-message');

    // User-admin menu routes
    Route::get('/user-admin', 'AdminController@viewUserAdmin')->name('admin.user-admin');
    Route::get('/create-user-admin', 'AdminController@create')->name('admin.create-user-admin');
    Route::post('/store-user-admin', 'AdminController@store')->name('admin.store-user-admin');
    Route::get('/user-admin/{admin}/edit', 'AdminController@edit')->name('admin.edit-user-admin');
    Route::patch('/user-admin/{admin}', 'AdminController@update')->name('admin.update-user-admin');
    Route::delete('/user-admin/{admin}', 'AdminController@destroy')->name('admin.destroy-user-admin');

    // User-lecturer menu routes
    Route::get('/user-lecturer', 'AdminController@viewUserLecturer')->name('admin.user-lecturer');
    Route::get('/create-user-lecturer', 'AdminController@createLecturer')->name('admin.create-user-lecturer');
    Route::post('/store-user-lecturer', 'AdminController@storeLecturer')->name('admin.store-user-lecturer');
    Route::get('/user-lecturer/{lecturer}/edit', 'AdminController@editLecturer')->name('admin.edit-user-lecturer');
    Route::patch('/user-lecturer/{lecturer}', 'AdminController@updateLecturer')->name('admin.update-user-lecturer');
    Route::delete('/user-lecturer/{lecturer}', 'AdminController@destroyLecturer')->name('admin.destroy-user-lecturer');

    // User Student menu routes
    Route::get('/user-student', 'AdminController@viewUserStudent')->name('admin.user-student');
    Route::get('/create-user-student', 'AdminController@createStudent')->name('admin.create-user-student');
    Route::post('/store-user-student', 'AdminController@storeStudent')->name('admin.store-user-student');
    Route::delete('/user-student/{student}', 'AdminController@destroyStudent')->name('admin.destroy-user-student');

    // Student menu routes
    Route::get('/student', 'AdminController@viewStudent')->name('admin.student');
    Route::get('/student/{student}', 'AdminController@viewStudentDetail')->name('admin.student-detail');
    Route::patch('/student/{student}', 'AdminController@updateStudent')->name('admin.update-student');

    // Achievement menu routes
    Route::get('/achievement', 'AdminController@viewAchievement')->name('admin.achievement');

    Route::get('/messages', 'AdminController@viewMessages')->name('admin.messages');



    // Password reset routes
    Route::post('/password/email', 'Auth\AdminForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
    Route::get('/password/reset', 'Auth\AdminForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
    Route::post('/password/reset', 'Auth\AdminResetPasswordController@reset');
    Route::get('/password/reset/{token}', 'Auth\AdminResetPasswordController@showResetForm')->name('admin.password.reset');
});

Route::prefix('/lecturer')->group(function () {
    Route::get('/login', 'Auth\LecturerLoginController@showLoginForm')->name('lecturer.login');
    Route::post('/login', 'Auth\LecturerLoginController@login')->name('lecturer.login.submit');
    Route::get('/', 'LecturerController@index')->name('lecturer.home');
    Route::get('/logout', 'Auth\LecturerLoginController@logout')->name('lecturer.logout');
    Route::get('/my-profile', 'LecturerController@myProfile')->name('lecturer.my-profile');
    Route::patch('/my-profile/{lecturer}', 'LecturerController@updateMyProfile')->name('lecturer.update-my-profile');

    // Student menu routes
    Route::get('/student', 'LecturerController@student')->name('lecturer.student');
    Route::get('/student/{student}', 'LecturerController@studentDetail')->name('lecturer.student-detail');

    // Achievement menu routes
    Route::get('/achievement', 'LecturerController@achievement')->name('lecturer.achievement');

    // Password reset routes
    Route::post('/password/email', 'Auth\LecturerForgotPasswordController@sendResetLinkEmail')->name('lecturer.password.email');
    Route::get('/password/reset', 'Auth\LecturerForgotPasswordController@showLinkRequestForm')->name('lecturer.password.request');
    Route::post('/password/reset', 'Auth\LecturerResetPasswordController@reset');
    Route::get('/password/reset/{token}', 'Auth\LecturerResetPasswordController@showResetForm')->name('lecturer.password.reset');
});
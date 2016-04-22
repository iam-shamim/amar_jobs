<?php
Route::group(['middleware' => ['web','auth'],'prefix'=>'ajax'], function () {

});
Route::group(['middleware' => ['web'],'prefix'=>'ajax','as'=>'ajax.'], function () {
    Route::get('education/search',['as'=>'education.search','uses'=>'educationController@ajaxSearch']);
});

Route::group(['middleware' => ['web','auth']], function () {
    Route::get('/logout',['as'=>'logout','uses'=>'loginController@logout']);
    Route::resource('skills','skillsController',['parameters'=> ['skills'=>'id']]);
    Route::resource('categories','categoriesController',['parameters'=> ['categories'=>'id']]);
    Route::resource('degrees','degreesController',['parameters'=> ['degrees'=>'id']]);
    Route::resource('user/type','userTypeController',['parameters'=> ['type'=>'id']]);
    Route::get('user/type/status/{id}/{status}',['as'=>'user.type.status','uses'=>'userTypeController@status'])->where(['id'=>'[0-9]','status'=>'enable|disable']);
    Route::resource('permission','PermissionController',['parameters'=> ['permission'=>'id']]);
    Route::resource('route','routeController',['parameters'=> ['route'=>'id']]);
    Route::get('route/status/{id}/{status}',['as'=>'route.status','uses'=>'routeController@status']);
    Route::get('dashboard',['as'=>'dashboard.index','uses'=>'dashboardController@index']);
    Route::get('/profile',['as'=>'profile','uses'=>'profileController@index']);
    Route::put('profile',['as'=>'profile.update','uses'=>'profileController@update']);
    Route::get('profile/skills',['as'=>'profile.skills','uses'=>'profileSkillsController@index']);
    Route::post('profile/skills',['as'=>'profile.skills.store','uses'=>'profileSkillsController@store']);
    Route::delete('profile/skills/{id}',['as'=>'profile.skills.destroy','uses'=>'profileSkillsController@destroy']);
    Route::get('profile/skills/{id}/edit',['as'=>'profile.skills.edit','uses'=>'profileSkillsController@edit']);
    Route::put('profile/skills/{id}',['as'=>'profile.skills.update','uses'=>'profileSkillsController@update']);
    Route::get('education',['as'=>'education.index','uses'=>'educationController@index']);
    Route::get('education/add',['as'=>'education.add','uses'=>'educationController@add']);
    Route::post('education/add',['as'=>'education.store','uses'=>'educationController@store']);
});
Route::group(['middleware' => ['web','notAuth']], function () {
    Route::get('/password/forgot',['as'=>'password.forgot.form','uses'=>'forgotController@index']);
    Route::get('/password/forgot',['as'=>'password.forgot.form','middleware'=>'notAuth', 'uses'=>'forgotController@index']);
    Route::post('/password/forgot',['as'=>'password.forgot.action', 'uses'=>'forgotController@reset']);
    Route::get('/password/reset/{resetLink}',['as'=>'password.reset', 'uses'=>'forgotController@resetConfirmation']);
    Route::post('/password/reset',['as'=>'password.reset.action', 'uses'=>'forgotController@resetAction']);
    Route::post('/login',['as'=>'login.action', 'uses'=>'loginController@auth']);
    Route::get('/activation/code',['as'=>'activation.code.form', 'uses'=>'loginController@activationForm']);
    Route::post('/activation/code',['as'=>'login.activation', 'uses'=>'loginController@activationCode']);
    Route::get('/activation/link/{link}',['as'=>'activation.link', 'uses'=>'loginController@activationLink']);
    Route::post('/mail/resend',['as'=>'mail.resend','uses'=>'resendActivationController@resend']);
    Route::get('/signup',['as'=>'signup.create', 'uses'=>'SignUpController@index']);
    Route::post('/signup',['as'=>'signUp.action', 'uses'=>'SignUpController@store']);
    Route::get('/login',['as'=>'login.create', 'uses'=>'loginController@index']);
});
Route::group(['middleware' => ['web']], function () {
    Route::get('/',['as'=>'home','uses'=> 'homeController@index']);
    Route::get('test','test@index')->where(['id'=>'[A|B]']);
});

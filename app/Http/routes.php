<?php
Route::group(['middleware' => ['web','auth'],'prefix'=>'ajax'], function () {

});
Route::group(['middleware' => ['web'],'prefix'=>'ajax','as'=>'ajax.'], function () {
    Route::get('education/search',['as'=>'education.search','uses'=>'educationController@ajaxSearch']);
    Route::get('company/search',['as'=>'company.search','uses'=>'experienceController@ajaxSearch']);
});
Route::group(['middleware' => ['web'],'prefix'=>'view','as'=>'profile.view.'], function () {
    Route::get('coverLetter/{id}',['as'=>'coverLetter','uses'=>'coverLetterController@view']);
    Route::get('education/{id}',['as'=>'education','uses'=>'educationController@view']);
    Route::get('experience/{id}',['as'=>'experience','uses'=>'experienceController@view']);
    Route::get('skills/{id}',['as'=>'skills','uses'=>'profileSkillsController@view']);
    Route::get('profile/{id}',['as'=>'profile','uses'=>'profileController@view']);
    Route::get('recommendations/{id}',['as'=>'recommendation','uses'=>'recommendationController@view']);
    Route::get('company/{id}',['as'=>'company','uses'=>'companyController@view']);
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
    Route::delete('education/{id}',['as'=>'education.destroy','uses'=>'educationController@destroy']);
    Route::get('experience',['as'=>'experience.index','uses'=>'experienceController@index']);
    Route::get('experience/add',['as'=>'experience.add','uses'=>'experienceController@add']);
    Route::post('experience/add',['as'=>'experience.store','uses'=>'experienceController@store']);
    Route::delete('experience/{id}',['as'=>'experience.destroy','uses'=>'experienceController@destroy']);
    Route::get('coverLetter',['as'=>'coverLetter.index','uses'=>'coverLetterController@index']);
    Route::get('coverLetter/add',['as'=>'coverLetter.add','uses'=>'coverLetterController@add']);
    Route::post('coverLetter/add',['as'=>'coverLetter.store','uses'=>'coverLetterController@store']);
    Route::get('coverLetter/{id}/edit',['as'=>'coverLetter.edit','uses'=>'coverLetterController@edit']);
    Route::post('coverLetter/{id}/edit',['as'=>'coverLetter.update','uses'=>'coverLetterController@update']);
    Route::get('recommendations',['as'=>'recommendation.index','uses'=>'recommendationController@index']);
    Route::get('recommendations/{id}/add',['as'=>'recommendation.create','uses'=>'recommendationController@create']);
    Route::post('recommendations/{id}/add',['as'=>'recommendation.store','uses'=>'recommendationController@store']);
    Route::get('recommendations/{id}/edit',['as'=>'recommendation.edit','uses'=>'recommendationController@edit']);
    Route::delete('recommendations/{id}',['as'=>'recommendation.destroy','uses'=>'recommendationController@destroy']);
    Route::put('recommendations/{id}',['as'=>'recommendation.update','uses'=>'recommendationController@update']);
    Route::get('company',['as'=>'company.index','uses'=>'companyController@index']);
    Route::get('company/create',['as'=>'company.create','uses'=>'companyController@create']);
    Route::post('company/create',['as'=>'company.store','uses'=>'companyController@store']);
    Route::get('company/{id}/delete',['as'=>'company.destroy','uses'=>'companyController@destroy']);
    Route::get('jobs',['as'=>'jobs.index','uses'=>'jobsController@index']);
    Route::get('settings',['as'=>'settings.index','uses'=>'settingsGeneralController@index']);

});
Route::group(['middleware' => ['web','notAuth']], function () {
    Route::get('/password/forgot',['as'=>'password.forgot.form','uses'=>'forgotController@index']);
    Route::get('/password/forgot',['as'=>'password.forgot.form','middleware'=>'notAuth', 'uses'=>'forgotController@index']);
    Route::post('/password/forgot',['as'=>'password.forgot.action', 'uses'=>'forgotController@reset']);
    Route::get('/password/reset/{resetLink}',['as'=>'password.reset', 'uses'=>'forgotController@resetConfirmation']);
    Route::post('/password/reset',['as'=>'password.reset.action', 'uses'=>'forgotController@resetAction']);
    Route::get('/login',['as'=>'login.create', 'uses'=>'loginController@index']);
    Route::post('/login',['as'=>'login.action', 'uses'=>'loginController@auth']);
    Route::get('/activation/code',['as'=>'activation.code.form', 'uses'=>'loginController@activationForm']);
    Route::post('/activation/code',['as'=>'login.activation', 'uses'=>'loginController@activationCode']);
    Route::get('/activation/link/{link}',['as'=>'activation.link', 'uses'=>'loginController@activationLink']);
    Route::post('/mail/resend',['as'=>'mail.resend','uses'=>'resendActivationController@resend']);
    Route::get('/signup',['as'=>'signup.create', 'uses'=>'SignUpController@index']);
    Route::post('/signup',['as'=>'signUp.action', 'uses'=>'SignUpController@store']);
    Route::get('/facebook',['as'=>'facebook.index', 'uses'=>'facebookController@index']);
    Route::get('/facebook/callback',['as'=>'facebook.callback', 'uses'=>'facebookController@callback']);
    Route::get('/github',['as'=>'github.index', 'uses'=>'facebookController@github']);
    Route::get('/github/callback',['as'=>'github.callback', 'uses'=>'facebookController@githubCallback']);
    Route::get('/linkedin',['as'=>'linkedin.index', 'uses'=>'facebookController@linkedin']);
    Route::get('/linkedin/callback',['as'=>'linkedin.callback', 'uses'=>'facebookController@linkedinCallback']);
    Route::get('/twitter',['as'=>'twitter.index', 'uses'=>'facebookController@twitter']);
    Route::get('/twitter/callback',['as'=>'twitter.callback', 'uses'=>'facebookController@twitterCallback']);
    Route::get('/google',['as'=>'google.index', 'uses'=>'facebookController@google']);
    Route::get('/google/callback',['as'=>'google.callback', 'uses'=>'facebookController@googleCallback']);
    Route::get('/bitbucket',['as'=>'bitbucket.index', 'uses'=>'facebookController@bitbucket']);
    Route::get('/bitbucket/callback',['as'=>'bitbucket.callback', 'uses'=>'facebookController@bitbucketCallback']);

    Route::get('/socialite/{service}',['as'=>'socialite.index', 'uses'=>'socialiteController@index']);
    Route::get('/socialite/{service}/callback',['as'=>'socialite.callback', 'uses'=>'socialiteController@callback']);


});
Route::group(['middleware' => ['web']], function () {
    Route::get('/',['as'=>'home','uses'=> 'homeController@index']);
    Route::get('test','test@index')->where(['id'=>'[A|B]']);
    Route::get('test/socialite/{email}','socialiteController@findOrCreateByEmail');
    Route::get('test/socialite/','socialiteController@test');
});

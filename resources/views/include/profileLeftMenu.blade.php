<div class="col-md-3 col-sm-3">
    <div class="widget">
        <div class="widget-header">
            <h3>Author Menus</h3>
        </div>
        <div class="widget-body">
            <ul class="author-menus">
                <li class="@yield('LeftMenuMyProfile')"><a href="{!! route('profile') !!}">My Profile</a></li>
                <li class="@yield('LeftMenuMyProfileExperience')"><a href="{!! route('experience.index') !!}">Experiences</a></li>
                <li class="@yield('LeftMenuMyProfileSkills')"><a href="{!! route('profile.skills') !!}">My Skills</a></li>
                <li class="@yield('LeftMenuMyProfileEducation')"><a href="{!! route('education.index') !!}">Education</a></li>
                <li class="@yield('LeftMenuMyProfileCoverLetter')"><a href="{!! route('coverLetter.index') !!}">Cover Letter</a></li>
                <li class=""><a href="{!! route('logout') !!}">Signout</a></li>
            </ul>
        </div>
    </div>
</div>
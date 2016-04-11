<div class="col-md-3 col-sm-3">
    <div class="widget">
        <div class="widget-header">
            <h3>Author Menus</h3>
        </div>
        <div class="widget-body">
            <ul class="author-menus">
                <li><a href="account_posts.php">My Ads</a></li>
                <li class="@yield('LeftMenuMyProfileSkills')"><a href="{!! route('profile.skills') !!}">My Skills</a></li>
                <li class="@yield('LeftMenuMyProfile')"><a href="{!! route('profile') !!}">My Profile</a></li>
                <li class=""><a href="{!! route('logout') !!}">Signout</a></li>
            </ul>
        </div>
    </div>
</div>
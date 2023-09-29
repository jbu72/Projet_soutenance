<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ url('/') }}">
        <div class="sidebar-brand-text mx-3">@lang('public.homepage')</div>
    </a>


    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item {{ request()->is('admin/dashboard') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('admin.dashboard.index') }}">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>@lang('public.dashboard')</span>
        </a>
    </li>


    <!-- Divider -->
    <hr class="sidebar-divider">

    <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseUserManagement" aria-expanded="true" aria-controls="collapseUserManagement">
            <span>@lang('public.user management')</span>
        </a>

        <div id="collapseUserManagement" class="collapse" aria-labelledby="headingUserManagement" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item {{ request()->is('admin/permissions') || request()->is('admin/permissions/*') ? 'active' : '' }}" href="{{ route('admin.permissions.index') }}"> <i class="fa fa-briefcase mr-2"></i> {{ __('Permissions') }}</a>
                <a class="collapse-item {{ request()->is('admin/roles') || request()->is('admin/roles/*') ? 'active' : '' }}" href="{{ route('admin.roles.index') }}"><i class="fa fa-briefcase mr-2"></i> {{ __('Roles') }}</a>
                <a class="collapse-item {{ request()->is('admin/users') || request()->is('admin/users/*') ? 'active' : '' }}" href="{{ route('admin.users.index') }}"> <i class="fa fa-user mr-2"></i> {{ __('Users') }}</a>
            </div>
        </div>
    </li>

    <li class="nav-item {{ request()->is('admin/categories') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('admin.categories.index') }}">
            <i class="fas fa-cogs"></i>
            <span>@lang('public.category')</span>
        </a>
    </li>



    <li class="nav-item {{ request()->is('admin/questions') || request()->is('admin/questions') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('admin.questions.index') }}">
            <i class="fas fa-cogs"></i>
            <span>{{ __('Question') }}</span></a>
    </li>

    <li class="nav-item {{ request()->is('admin/options') || request()->is('admin/options') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('admin.options.index') }}">
            <i class="fas fa-cogs"></i>
            <span>{{ __('Option') }}</span></a>
    </li>

    <li class="nav-item {{ request()->is('admin/results') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('admin.results.index') }}">
            <i class="fas fa-cogs"></i>
            <span>@lang('public.result')</span>
        </a>
    </li>

    <!-- <li class="nav-item ">
                <a class="nav-link" href="">
                    <i class="fas fa-cogs"></i>
                    <span>Language</span></a>
            </li> -->
    <!-- <ul class="navbar-nav ml-auto flex-nowrap">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true">
                Language
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="locale/en">English</a>
                <a class="dropdown-item" href="locale/fr">Français</a>
            </div>
        </li>
    </ul> -->

    <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseLanguage" aria-expanded="true" aria-controls="collapseLanguage">
            <span>Language</span>
        </a>

        <div id="collapseLanguage" class="collapse" aria-labelledby="headingLanguage" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/locale/en">English</a>
                <a class="collapse-item" href="/locale/fr">Français</a>
            </div>
        </div>
    </li>




</ul>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container-fluid">
        <a class="brand" href="<?php echo URL::site() ?>">Агент байесовской фильтрации спама | Admin Side</a>
        <div class="nav-collapse collapse">
          <p class="navbar-text pull-right">
            Logged in as <a href="<?php echo URL::site('user/profile') ?>" class="navbar-link"><?php echo Auth::instance()->get_user()->user_profile->first_name?></a>
          </p>
        </div><!--/.nav-collapse -->
      </div>
    </div>
</div>
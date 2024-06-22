<div class="sidebar" data-background-color="dark">
  <div class="sidebar-logo">
    <!-- Logo Header -->
    <div class="logo-header" data-background-color="dark">
      <a href="index.html" class="logo">
        <img
          src="assets/img/eyes.jpg"
          alt="navbar brand"
          class="navbar-brand"
          height="60"
        />
        <span style="color: white;"> Minh Thảo</span>
      </a>
      <div class="nav-toggle">
        <button class="btn btn-toggle toggle-sidebar">
          <i class="gg-menu-right"></i>
        </button>
        <button class="btn btn-toggle sidenav-toggler">
          <i class="gg-menu-left"></i>
        </button>
      </div>
      <button class="topbar-toggler more">
        <i class="gg-more-vertical-alt"></i>
      </button>
    </div>
    <!-- End Logo Header -->
  </div>
  <div class="sidebar-wrapper scrollbar scrollbar-inner">
    <div class="sidebar-content">
      <ul class="nav nav-secondary">
        <li class="nav-item <?php echo setActive('dashboard') ?>  ">
                <a href="index.php ">
                  <i class="fas fa-home"></i>
                  <span class="sub-item">Dashboard</span>
                </a>
        </li>
        
        <li class="nav-item <?php echo setActive('blogs') ?>">
          <a href="index.php?page=blogs">
            <i class="fas fa-pen-square"></i>
            <span class="sub-item">Blogs</span>
          </a>
        </li>
        <?php
          /*Admin - Mod menu*/
            if($_SESSION['user_role']>=1){
          ?>
        <li class="nav-item  <?php echo setActive('blogcategories') ?>">
          <a href="index.php?page=blogcategories">
            <i class="fas fa-th-list"></i>
            <span class="sub-item">Blog Categories</span>
          </a>
        </li>
        <li class="nav-item">
          <a data-bs-toggle="collapse" href="#tables">
            <i class="fas fa-table"></i>
            <p>Tables</p>
            <span class="caret"></span>
          </a>
          <div class="collapse" id="tables">
            <ul class="nav nav-collapse">
              <li>
                <a href="tables/tables.html">
                  <span class="sub-item">Basic Table</span>
                </a>
              </li>
              <li>
                <a href="tables/datatables.html">
                  <span class="sub-item">Datatables</span>
                </a>
              </li>
            </ul>
          </div>
        </li>
        <li class="nav-item  <?php echo setActive('subscribers') ?>">
            <a href="index.php?page=subscribers">
              <i class="far fa-chart-bar"></i>
              <span class="sub-item">Subscribers</span>
            </a>
          </li>
        <li class="nav-item  <?php echo setActive('sliders') ?>">
            <a href="index.php?page=sliders">
            <i class="fas fa-th-list"></i>
              <span class="sub-item">Sliders</span>
            </a>
          </li>
        <li class="nav-item  <?php echo setActive('users') ?>">
            <a href="index.php?page=users">
               <i class="fas fa-user"></i>
              <span class="sub-item">User</span>
            </a>
          </li>
        </li>
        <li class="nav-item">
          <a href="widgets.html">
           
            <p>Widgets</p>
            <span class="badge badge-success">4</span>
          </a>
        </li>
        <?php
          }
          /*Admin menu*/
           if($_SESSION['user_role']==2){
          ?>
        <li class="nav-item">
          <a data-bs-toggle="collapse" href="#submenu">
            <i class="fas fa-bars"></i>
            <p>Menu Levels</p>
            <span class="caret"></span>
          </a>
          <div class="collapse" id="submenu">
            <ul class="nav nav-collapse">

               <li class="nav-item  <?php echo setActive('mailsettings') ?>">
                <a href="index.php?page=mailsettings">
                  <span class="sub-item">Mail Setting</span>
                </a>
              </li>
               <li class="nav-item  <?php echo setActive('settings') ?>">
                <a href="index.php?page=settings">
                  <span class="sub-item">Setting</span>
                </a>
              </li>
               <li class="nav-item  <?php echo setActive('socials') ?>">
                <a href="index.php?page=socials">
                  <span class="sub-item">Socials</span>
                </a>
              </li>
               <li class="nav-item  <?php echo setActive('contact') ?>">
                <a href="index.php?page=contact">
                  <span class="sub-item">Contact</span>
                </a>
              </li>
               <li class="nav-item  <?php echo setActive('terms') ?>">
                <a href="index.php?page=terms">
                  <span class="sub-item">Terms</span>
                </a>
              </li>
               <li class="nav-item  <?php echo setActive('about') ?>">
                <a href="index.php?page=about">
                  <span class="sub-item">About</span>
                </a>
              </li>
               <li class="nav-item  <?php echo setActive('links') ?>">
                <a href="index.php?page=links">
                  <span class="sub-item">Links</span>
                </a>
              </li>
            </ul>
          </div>
        </li>
          <?php  
            }
          ?>
      </ul>
    </div>
  </div>
</div>
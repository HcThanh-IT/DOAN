<nav
  class="navbar navbar-header navbar-header-transparent navbar-expand-lg border-bottom"
>
  <div class="container-fluid">
    <nav
      class="navbar navbar-header-left navbar-expand-lg navbar-form nav-search p-0 d-none d-lg-flex"
    >

    </nav>

    <ul class="navbar-nav topbar-nav ms-md-auto align-items-center">
      <li
        class="nav-item topbar-icon dropdown hidden-caret d-flex d-lg-none"
      >
        <a
          class="nav-link dropdown-toggle"
          data-bs-toggle="dropdown"
          href="#"
          role="button"
          aria-expanded="false"
          aria-haspopup="true"
        >
          <i class="fa fa-search"></i>
        </a>
        <ul class="dropdown-menu dropdown-search animated fadeIn">
          <form class="navbar-left navbar-form nav-search">
            <div class="input-group">
              <input
                type="text"
                placeholder="Search ..."
                class="form-control"
              />
            </div>
          </form>
        </ul>
      </li>
      <li class="nav-item topbar-icon dropdown hidden-caret">
        <a
          class="nav-link dropdown-toggle"
          href="#"
          id="messageDropdown"
          role="button"
          data-bs-toggle="dropdown"
          aria-haspopup="true"
          aria-expanded="false"
        >
          <i class="fa fa-envelope"></i>
        </a>
      </li>
      <li class="nav-item topbar-icon dropdown hidden-caret">
        <a
          class="nav-link dropdown-toggle"
          href="#"
          id="notifDropdown"
          role="button"
          data-bs-toggle="dropdown"
          aria-haspopup="true"
          aria-expanded="false"
        >
          <i class="fa fa-bell"></i>
        </a>
      </li>
    
    

      <li class="nav-item topbar-user dropdown hidden-caret">
        <a
          class="dropdown-toggle profile-pic"
          data-bs-toggle="dropdown"
          href="#"
          aria-expanded="false"
        >
          <div class="avatar-sm">
            <img
              src="assets/img/admin.jpg"
              alt="..."
              class="avatar-img rounded-circle"
            />
          </div>
          <span class="profile-username">
            <span class="op-7">Admin</span>
          </span>
        </a>
        <ul class="dropdown-menu dropdown-user animated fadeIn">
          <div class="dropdown-user-scroll scrollbar-outer">
            <li>

            </li>
            <li>
              <a class="dropdown-item" href="#">My Profile</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Account Setting</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="logout.php">Logout</a>
            </li>
          </div>
        </ul>
      </li>
    </ul>
  </div>
</nav>
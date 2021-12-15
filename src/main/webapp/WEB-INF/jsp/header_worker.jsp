<header class="p-3 mb-3 border-bottom">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">


        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="/worker/home" class="nav-link px-2 link-secondary">Home</a></li>
          <li><a href="/worker/hotel_task" class="nav-link px-2 link-dark">My tasks</a></li>
          <li><a href="/worker/get_job" class="nav-link px-2 link-dark">Get a new job</a></li>
          <li><a href="/worker/help" class="nav-link px-2 link-dark">Help</a></li>
        </ul>

        <div class="dropdown text-end">
          <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="https://img.icons8.com/small/32/000000/gender-neutral-user.png"/>
          </a>
          <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
            <sec:authorize access="isAuthenticated()">
            <li><a class="dropdown-item" href="/worker/profile">Profile</a></li>
            <li><hr class="dropdown-divider" /></li>
            <li><a class="dropdown-item" href="/logout">Logout</a></li>
            </sec:authorize>
          </ul>
        </div>
      </div>
    </div>
</header>

<nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
    <a href="" class="navbar-brand p-0">
        <h1 class="m-0"><i class="fa fa-map-marker-alt me-3"></i>Travela</h1>
        <!-- <img src="img/logo.png" alt="Logo"> -->
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="fa fa-bars"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto py-0">
            <a href="index.php" class="nav-item nav-link active">Home</a>
            <a href="about.html" class="nav-item nav-link">About</a>
            <a href="services.html" class="nav-item nav-link">Services</a>
            <a href="packages.html" class="nav-item nav-link">Packages</a>
            <a href="blogs.php" class="nav-item nav-link">Blog</a>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Categories</a>
                <div class="dropdown-menu m-0">
                    <?php 
                        while ($row_categories = $stmt_categories->fetch()) {
                    ?>
                    <a href="blogs.php?id_category=<?php echo $row_categories['id']?>" class="dropdown-item"><?php echo $row_categories['title']?></a>
                    <?php } ?>
                </div>
            </div>
            <a href="contact.html" class="nav-item nav-link">Contact</a>
        </div>
        <a href="" class="btn btn-primary rounded-pill py-2 px-4 ms-lg-4">Book Now</a>
    </div>
</nav>
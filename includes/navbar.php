<div class="container-fluid position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="" class="navbar-brand p-0">
                    <h1 class="m-0"><i class="fa fa-user me-3"></i>21661054</h1>
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="index.php?page=home" class="nav-item nav-link <?php if($page =='home') echo 'active';?>">Home</a>
                        <a href="index.php?page=about" class="nav-item nav-link <?php if($page =='about') echo 'active';?>">About</a>
                        <a href="index.php?page=home" class="nav-item nav-link <?php if($page =='home') echo 'active';?>">Services</a>
                        <a href="index.php?page=home" class="nav-item nav-link <?php if($page =='home') echo 'active';?>">Packages</a>
                        <a href="index.php?page=blogs" class="nav-item nav-link <?php if($page =='blogs'&&!isset($_GET['id_category'])) echo 'active';?>">Blog</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle <?php if(isset($_GET['id_category'])) echo 'active';?>" data-bs-toggle="dropdown">Categories</a>
                            <div class="dropdown-menu m-0">
                                <?php 
                                    while ($row_categories = $stmt_categories->fetch()) {
                                ?>
                                <a href="index.php?page=blogs&id_category=<?php echo $row_categories['id']?>" class="dropdown-item"><?php echo $row_categories['title']?></a>
                                <?php } ?>
                            </div>
                        </div>
                        <a href="index.php?page=contact" class="nav-item nav-link <?php if($page =='contact') echo 'active';?>">Contact</a>
                    </div>
                    <a href="./admin" class="btn btn-primary rounded-pill py-2 px-4 ms-lg-4">ADMIN</a>
                </div>
            </nav>
            <?php if($page=='home'){?>
            <!-- Carousel Start -->
            <div class="carousel-header">
                <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
                    <ol class="carousel-indicators">
                        <?php 
                            $number = 5; // Số bài muốn hiển thị
                            for ($i = 0; $i < $number; $i++) {
                        ?>
                            <li data-bs-target="#carouselId" class="<?php if($i == 0) echo 'active'; ?>" data-bs-slide-to="<?php echo $i; ?>"></li>
                        <?php 
                            }
                        ?>
                    </ol>

                    <div class="carousel-inner" role="listbox">
                    <?php 
                        $blogs= new blogs($db);
                        $stmt_blog=$blogs->desc(5);
                        $active = true;
                    ?>
                        <?php while ($row_blog = $stmt_blog->fetch()){?>
                        <div class="carousel-item <?php if ($active) { echo 'active'; $active = false; } ?>">
                            <img src="./images/blogs/<?php echo $row_blog['image'];?>" class="img-fluid" alt="Image">
                            <div class="carousel-caption">
                                <div class="p-3" style="max-width: 900px;">
                                    <h4 class="text-white text-uppercase fw-bold mb-4" style="letter-spacing: 3px;"><?php echo $row_blog['title_category']?></h4>
                                    <h1 class="display-2 text-capitalize text-white mb-4"><?php echo $row_blog['title']?></h1>
                                    <p class="mb-5 fs-5"><?php echo $row_blog['content']?></p>
                                    <div class="d-flex align-items-center justify-content-center">
                                        <a class="btn-hover-bg btn btn-primary rounded-pill text-white py-3 px-5" href="index.php?page=blogs&id_blog=<?php echo $row_blog['id']?>">Discover Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php }?>

                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon btn bg-primary" aria-hidden="false"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                        <span class="carousel-control-next-icon btn bg-primary" aria-hidden="false"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
            <!-- Carousel End -->
             <?php }?>
        </div>
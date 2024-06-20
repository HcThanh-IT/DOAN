<?php 
    include "admin/database/database.php";
    include "admin/database/blogcategories.php";
    include "admin/database/blogs.php";
    $database = new database;
    $db = $database->connect();

    $blogcategories = new blogcategories($db);
    $stmt_categories = $blogcategories->readAll();

    $blogs= new blogs($db);
    if(isset($_GET['id_category'])){
        $id_category=$_GET['id_category'];
        $stmt_blog=$blogs->read_category($id_category);
    }
    else if(isset($_GET['id_blog'])){
        $id_blog=$_GET['id_blog'];
        $stmt_blog=$blogs->read($id_blog);
    }
    else{
        $stmt_blog=$blogs->readAll();
    }
    

?>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Travela - Tourism Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600&family=Roboto&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>

        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->
         
        <!-- Topbar Start -->
        <?php include "includes/topbar.php"?>
        <!-- Topbar End -->

        <!-- Navbar & Hero Start -->
        <div class="container-fluid position-relative p-0">
            <?php include "includes/navbar.php"?>
        </div>
        <!-- Navbar & Hero End -->

        <!-- Header Start -->
        <div class="container-fluid bg-breadcrumb">
            <div class="container text-center py-5" style="max-width: 900px;">
                <h3 class="text-white display-3 mb-4">Our Blog</h1>
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active text-white">Blog</li>
                </ol>    
            </div>
        </div>
        <!-- Header End -->

        <!-- Blog Start -->
        <div class="container-fluid blog py-5">
            <div class="container py-5">
                <div class="mx-auto text-center mb-5" style="max-width: 900px;">
                    <h5 class="section-title px-3">Our Blog</h5>
                    <?php if(isset($_GET['id_category'])){
                    $stmt_categories = $blogcategories->readAll();
                        while ($row_categories = $stmt_categories->fetch()) {
                    ?>
                        <h1 class="mb-4">
                            <?php if($_GET['id_category']==$row_categories['id'])echo $row_categories['title']?>
                        </h1>
                        <p class="mb-0">
                            <?php if($_GET['id_category']==$row_categories['id'])echo $row_categories['status']?>
                        </p>
                    <?php } }?>
                    
                </div>
                <div class="row g-4 justify-content-center">
                    <?php 
                    if(isset($_GET['id_blog'])){
                     ?>

                    <div class="container-fluid about py-5">
                        <div class="container py-5">
                            <div class="row g-5 align-items-center">
                                <div class="col-lg-5">
                                    <div class="h-100" style="border: 50px solid; border-color: transparent #13357B transparent #13357B;">
                                        <img src="img/about-img.jpg" class="img-fluid w-100 h-100" alt="">
                                    </div>
                                </div>
                                <div class="col-lg-7" style="background: linear-gradient(rgba(255, 255, 255, .8), rgba(255, 255, 255, .8)), url(img/about-img-1.png);">
                                    <h5 class="section-about-title pe-3">About Us</h5>
                                    <h1 class="mb-4">Welcome to <span class="text-primary">Travela</span></h1>
                                    <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias, dolorum, doloribus sunt dicta, officia voluptatibus libero necessitatibus natus impedit quam ullam assumenda? Id atque iste consectetur. Commodi odit ab saepe!</p>
                                    <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium quos voluptatem suscipit neque enim, doloribus ipsum rem eos distinctio, dignissimos nisi saepe nulla? Libero numquam perferendis provident placeat molestiae quia?</p>
                                    <div class="row gy-2 gx-4 mb-4">
                                        <div class="col-sm-6">
                                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>First Class Flights</p>
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Handpicked Hotels</p>
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>5 Star Accommodations</p>
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Latest Model Vehicles</p>
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>150 Premium City Tours</p>
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>24/7 Service</p>
                                        </div>
                                    </div>
                                    <a class="btn btn-primary rounded-pill py-3 px-5 mt-2" href="">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php }  else{
                        

                        while ($row_blog = $stmt_blog->fetch()){
                            ?>
                        <div class="col-lg-4 col-md-6">
                            <div class="blog-item">
                                <div class="blog-img">
                                    <div class="blog-img-inner">
                                        <img class="img-fluid w-100 rounded-top" src="./images/blogs/<?php echo $row_blog['image'];?>" alt="Image">
                                        <div class="blog-icon">
                                            <a href="#" class="my-auto"><i class="fas fa-link fa-2x text-white"></i></a>
                                        </div>
                                    </div>
                                    <div class="blog-info d-flex align-items-center border border-start-0 border-end-0">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt text-primary me-2"></i><?php echo $row_blog['created_at'];?></small>
                                        <a href="#" class="btn-hover flex-fill text-center text-white border-end py-2"><i class="fa fa-thumbs-up text-primary me-2"></i>1.7K</a>
                                        <a href="#" class="btn-hover flex-fill text-center text-white py-2"><i class="fa fa-comments text-primary me-2"></i>1K</a>
                                    </div>
                                </div>
                                <div class="blog-content border border-top-0 rounded-bottom p-4">
                                    <p class="mb-3">Posted By: Royal Hamblin </p>
                                    <a href="#" class="h4"><?php echo $row_blog['title'];?></a>
                                    <p class="my-3"><?php echo $row_blog['content']?></p>
                                    <a href="blogs.php?id_blog=<?php echo $row_blog['id'];?>" class="btn btn-primary rounded-pill py-2 px-4">Read More</a>
                                </div>
                            </div>
                        </div>

                    
                    <?php }}?>



                </div>
            </div>
        </div>
        <!-- Blog End -->

        <!-- Subscribe Start -->
        <?php include "includes/subscribe.php"?>
        <!-- Subscribe End -->

        <!-- Footer Start -->
        <?php include "includes/footer.php"?>
        <!-- Footer End -->
        
        <!-- Copyright Start -->
        <div class="container-fluid copyright text-body py-4">
            <div class="container">
                <div class="row g-4 align-items-center">
                    <div class="col-md-6 text-center text-md-end mb-md-0">
                        <i class="fas fa-copyright me-2"></i><a class="text-white" href="#">Your Site Name</a>, All right reserved.
                    </div>
                    <div class="col-md-6 text-center text-md-start">
                        <!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
                        <!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
                        <!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
                        Designed By <a class="text-white" href="https://htmlcodex.com">HTML Codex</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-primary btn-primary-outline-0 btn-md-square back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
        <!-- JavaScript Libraries -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
        

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>
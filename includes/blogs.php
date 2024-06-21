<?php 
  
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

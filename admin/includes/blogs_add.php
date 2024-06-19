<?php  
$blogcategories = new blogcategories($db);
$stmt_category = $blogcategories->readAll();
$blogs = new blogs($db);

/*Add new category*/
if($_SERVER['REQUEST_METHOD']=='POST'){
    $blogs->title = $_POST['title'];
    $blogs->content = $_POST['content'];
    $blogs->id_category = $_POST['id_category'];
    $blogs->id_user = 1 ;

    if(!empty($_FILES['image']['name'])){
        $file_name = uploadImage($_FILES['image'],"../images/blogs/");
        $blogs->image = $file_name;
    }

    date_default_timezone_set("Asia/Ho_Chi_Minh");
    $blogs->created_at = date("Y-m-d h:i:s",time());
    $blogs->updated_at = date("Y-m-d h:i:s",time());

    if($blogs->create()){
        $message = "Add new blogs uccessfully!";
    }
}

?>

   <div class="col-md-6 col-lg-4">
      <h1> Add New blogs</h1>
       <div class="alert alert-success">
     <?php echo isset($message)?$message:'';  ?>
    </div>
        <form role="form" method="Post" action="index.php?page=blogs_add" enctype="multipart/form-data" >
              <div class="form-group">
                          <label for="exampleFormControlSelect1"
                            >Blog categories</label
                          >
                          <select name="id_category" class="form-select">
                                <option value="">Select blog category</option>
                                <?php while($rows = $stmt_category->fetch()){ ?>
                                <option value="<?php echo $rows['id'] ?>"><?php echo $rows['title'] ?></option>
                                <?php 
                                } 
                                ?>
                            </select>
                        </div>
            <div class="form-group form-group-default">
                <label class="mb-3"><b>Title</b></label>
                  <input id="Name" name="title" type="text" lass="form-control"
                  />
            </div>
            <div class="form-group form-group-default">
                    <label>Image</label>
                    <input type="file" name="image"> 
            </div>
            <div class="form-group form-group-default">
                <label for="comment">Content</label>
                <textarea class="form-control" id="content" name="content" rows="5">
                </textarea>
            </div>
        <button type="submit" class="btn btn-success">Submit</button>
        </form>
     </div>
  <div class="card-action">
  </div>
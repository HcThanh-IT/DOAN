<?php  
$blogcategories = new blogcategories($db);
$stmt_category = $blogcategories->readAll(); // Assuming readAll() fetches all categories

$blogs = new blogs($db);

// Check if $_GET['id'] is set and not empty
if (isset($_GET['id']) && !empty($_GET['id'])) {
    $blogs->id = $_GET['id'];
    $stmt_blog = $blogs->read($_GET['id']); // Pass $_GET['id'] directly to read()
    $row = $stmt_blog->fetch(PDO::FETCH_ASSOC); // Assuming read() returns a PDOStatement
    // Optionally check if $row is empty if needed
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Sanitize and validate inputs before updating
    $blogs->title = $_POST['title'];
    $blogs->content = $_POST['content'];
    $blogs->id_category = $_POST['id_category'];
    $blogs->id_user = 1; // Assuming the user ID is hardcoded for demo, change as needed

    // Handle image upload/update
    if (!empty($_FILES['image']['name'])) {
        if ($blogs->image) {
            $upload_file_name = updateImage($_FILES['image'], $blogs->image, '../images/blogs/');
        } else {
            $upload_file_name = uploadImage($_FILES['image'], "../images/blogs/");
        }
        
        $blogs->image = $upload_file_name;
    }

    // Update timestamp
    date_default_timezone_set("Asia/Ho_Chi_Minh");
    $blogs->updated_at = date("Y-m-d h:i:s", time());

    // Perform update
    if ($blogs->update()) {
        $message = "Blog entry updated successfully!";
    } else {
        $error_message = "Failed to update blog entry.";
    }
}
?>


   <div class="col-md-6 col-lg-4">
      <h1> Updated blogs</h1>
       <div class="alert alert-success">
     <?php echo isset($message)?$message:'';  ?>
    </div>
        <form role="form" method="POST" action="index.php?page=blogs_edit&id=<?php echo $_GET['id']; ?>" enctype="multipart/form-data">
              <div class="form-group">
                          <label for="exampleFormControlSelect1"
                            >Blog categories</label
                          >
                          <select name="id_category" class="form-control">
                                  
                            <?php 
                            while ($rows=$stmt_category->fetch()) {
    
                             ?>
                                <option value="<?php echo $rows['id'] ?>" <?php echo $rows['id']==$blogs->id_category?"selected":"" ?>><?php echo $rows['title'] ?></option>
                             <?php 
                                 }
                             ?>
                            </select>
                        </div>
 
             <div class="form-group form-group-default">
                <label class="mb-3"><b>Title</b></label>
                  <input id="Name" name="title" type="text" lass="form-control " value="<?php echo $blogs->title ?>"
                  />
            </div>
            <div class="form-group form-group-default">
                 <img src="<?php echo "../images/blogs/".$blogs->image ?>" width="200px" alt="">
            </div>
            <div class="form-group form-group-default">
                    <label>Image</label>
                    <input type="file" name="image"> 
            </div>
            <div class="form-group form-group-default">
                <label for="comment">Content</label>
                <textarea class="form-control" id="content" name="content" rows="5"><?php echo $blogs->content ?>
                </textarea>
            </div>
        <button type="submit" class="btn btn-success">Submit</button>
        </form>
     </div>
  <div class="card-action">
  </div>
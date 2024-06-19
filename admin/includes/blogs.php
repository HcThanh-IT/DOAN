 <?php 
$blogcategories= new blogcategories($db);
$blogs= new blogs($db);

if (!empty($_GET['id'])) {
    $blogs->id=$_GET['id'];
    if ($blogs->delete()) {
        $message="deleted successfully";
    }
}

$stmt_categories=$blogs->readAll();

?>
<div class="card">
  <div class="card-header">
    <div class="card-title">Blogs
  </div>
   <div class="form-group has-success">
     <?php echo isset($message)?$message:''; ?>
</div>
                      
  <div class="card-body">
    <div class="card-sub">
      <div class="form-group">
        <div class="input-group">
          <a href="index.php?page=blogs_add" style="font-size: 17px;" class="btn btn-primary btn-sm">Create</a>
          <input
            type="text"
            class="form-control"
            placeholder=""
            aria-label=""
            aria-describedby="basic-addon1"
          />
        </div>
    </div>
    <table class="table mt-3">
      <thead>
        <tr>
          <th>Id</th>
          <th>Image</th>
          <th>Category</th>
          <th>Title</th>
          <th>Created Date</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
         <?php  
            while($rows = $stmt_categories->fetch()){
            ?>
        <tr>
          <td><?php echo $rows['id'] ?></td>
          <td>
            <img src="<?php echo "../images/blogs/".$rows['image'] ?>" alt="" style="width: 80px;">
          </td>
           <td>
                <?php 
                    $blogcategories->id=$rows['id_category'];
                 $blogcategories->read();
                 echo $blogcategories->title;
                  ?>  
            </td>
          <td><?php echo $rows['title'] ?></td>
          <td><?php echo $rows['created_at'] ?></td>
          <td>
            <a href="index.php?page=blogs_edit&id=<?php echo $rows['id']?>" class="btn btn-warning btn-sm">Edit</a>
            <a href="index.php?page=blogs&id=<?php echo $rows['id']?>" class="btn btn-danger btn-sm">Delete</a>
        </td>
        </tr>
         <?php  
       }
          ?>   
      </tbody>
    </table>
  </div>
</div>
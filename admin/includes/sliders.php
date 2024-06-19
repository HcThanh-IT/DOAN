<?php  
$sliders = new sliders($db);

if(!empty($_GET['id'])){
  $sliders->id = $_GET['id'];
  $sliders->read();

  if($sliders->image){
      deleteImage($sliders->image,"../images/sliders/");
  }

  if($sliders->delete()){
      $message = "Deleted successfully!";
  }
}

$stmt_sliders = $sliders->readAll();
?>
<div class="card">
<div class="card-header">
  <div class="card-title">Slider
</div>
<?php  
if(!empty($message)){
?>
<div class="alert alert-success">
    <?php echo $message ?>
</div>
<?php  
}
?>
                    
<div class="card-body">
  <div class="card-sub">
    <div class="form-group">
      <div class="input-group">
        <a href="index.php?page=sliders_add" style="font-size: 17px;" class="btn btn-primary btn-sm">Add</a>
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
          <th style="text-align: center;">Title</th>
          <th style="text-align: center;">Created Date</th>
          <th style="text-align: center;">Action</th>
      </tr>
    </thead>
    <tbody>
       <?php  
        while($rows = $stmt_sliders->fetch()){
        ?>
        <tr class>
            <td><?php echo $rows['id'] ?></td>
            <td>
                <img src="<?php echo "../images/sliders/".$rows['image'] ?>" width="80px" alt="">
            </td>
            <td><?php echo $rows['title'] ?></td>
            <td class="center" style="text-align: center;"><?php echo $rows['created_at'] ?></td>
            <td class="center" style="text-align: center;">
                <a href="index.php?page=sliders_edit&id=<?php echo $rows['id'] ?>" class="btn btn-warning btn-sm">Edit</a>
                <a href="index.php?page=sliders&id=<?php echo $rows['id'] ?>" class="btn btn-danger btn-sm">Delete</a>
            </td>
        </tr>
        <?php  
        }
        ?>  
    </tbody>
  </table>
</div>
</div>
<?php  
$blogcategories = new blogcategories($db);

if(!empty($_GET['id'])){
$blogcategories->id = $_GET['id'];
if($blogcategories->delete()){
    $message = "Deleted successfully!";
}
}

$stmt_categories = $blogcategories->readAll();
?>
<div class="row">
<div class="col-md-12">
    <h1 class="page-header">
        Blog Categories
    </h1>
</div>
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

<div class="row">
<div class="col-md-12">
    <!-- Advanced Tables -->
    <div class="panel panel-default">
        <div class="panel-heading">
             <a class="btn btn-primary btn-sm" href="index.php?page=blogcategories_add">Add</a>
        </div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Title</th>
                            <th style="text-align: center;">Status</th>
                            <th style="text-align: center;">Created Date</th>
                            <th style="text-align: center;">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php  
                        while($rows = $stmt_categories->fetch()){
                        ?>
                        <tr>
                            <td><?php echo $rows['id'] ?></td>
                            <td><?php echo $rows['title'] ?></td>
                            <td style="text-align: center;">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" <?php echo $rows['status']?"checked":"" ?>>
                                    </label>
                                </div>
                                <?php //echo $rows['status'] ?>
                                    
                            </td>
                            <td class="center" style="text-align: center;"><?php echo $rows['created_at'] ?></td>
                            <td class="center" style="text-align: center;">
                                <a href="index.php?page=blogcategories_edit&id=<?php echo $rows['id'] ?>" class="btn btn-warning btn-sm">Edit</a>
                                <a href="index.php?page=blogcategories&id=<?php echo $rows['id'] ?>" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                        <?php  
                        }
                        ?>
                    </tbody>
                </table>
            </div>
            
        </div>
    </div>
</div>
</div>

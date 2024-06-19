<?php 
class blogs{
	private $table="blogs";
	private $conn;

	//thuoc tinh
	public $title;
	public $content;
	public $image;
	
	public $id_category;
	public $id_user;
	public $created_at;
	public $updated_at;
	//db
	public function __construct($db){
		$this->conn=$db;

	}
	//readall
	public function readAll(){
		$sql="SELECT * FROM $this->table";

		$stmt=$this->conn->prepare($sql);
		$stmt->execute();
		return $stmt;
	}

	//read
	public function read(){
		$sql="SELECT * FROM $this->table
				WHERE id= :get_id";
		$stmt = $this->conn->prepare($sql);
		$stmt->bindParam(":get_id",$this->id);
		$stmt->execute();
		$row = $stmt->fetch();
		$this->title = $row['title'];
		$this->content = $row['content'];
		$this->image = $row['image'];
		$this->id_category = $row['id_category'];
		$this->id_user = $row['id_user'];
		$this->created_at = $row['created_at'];
		$this->updated_at = $row['updated_at'];
	}
	public function read_category($id_category) {
		$sql = "SELECT * FROM $this->table WHERE id_category = :category_id";
		$stmt = $this->conn->prepare($sql);
		$stmt->bindParam(":category_id", $id_category);
		$stmt->execute();
		$row = $stmt->fetch(); 
		$this->title = $row['title'];
		$this->content = $row['content'];
		$this->image = $row['image'];
		$this->id_category = $row['id_category'];
		$this->id_user = $row['id_user'];
		$this->created_at = $row['created_at'];
		$this->updated_at = $row['updated_at'];
	}
	
	
	public function create(){
		$sql="INSERT INTO $this->table
		    SET title= :get_title, 
		    	content= :get_content, 
		    	image= :get_image, 
			    id_category= :get_id_category, 
			    id_user= :get_id_user, 
			    created_at= :get_created_date,
			    updated_at= :get_updated_date";

		    $stmt=$this->conn->prepare($sql);
		    $stmt->bindParam(":get_title",$this->title);
		    $stmt->bindParam(":get_content",$this->content);
		    $stmt->bindParam(":get_image",$this->image);
		    $stmt->bindParam(":get_id_category",$this->id_category);
		    $stmt->bindParam(":get_id_user",$this->id_user);
		    $stmt->bindParam(":get_created_date",$this->created_at);
		    $stmt->bindParam(":get_updated_date",$this->updated_at);
		    if ($stmt->execute()) {
		    	return true;
		    }
	}


		public function update(){
		$sql="UPDATE $this->table
				SET title= :get_title, 
				content= :get_content,
				image= :get_image,
			    
			    id_category= :get_id_category,
			    id_user= :get_id_user,
			    updated_at= :get_updated_date
			    WHERE id= :get_id";

		      $stmt=$this->conn->prepare($sql);
		      $stmt->bindParam(":get_id",$this->id);
		    $stmt->bindParam(":get_title",$this->title);
		      $stmt->bindParam(":get_content",$this->content);
		        $stmt->bindParam(":get_image",$this->image);
		    
		      $stmt->bindParam(":get_id_category",$this->id_category);
		        $stmt->bindParam(":get_id_user",$this->id_user);
		    $stmt->bindParam(":get_updated_date",$this->updated_at);
		    
		    if ($stmt->execute()) {
		    	return true;
		    }
	}
	public function delete(){
		$sql="DELETE FROM $this->table
				WHERE id= :get_id";
				
				   $stmt=$this->conn->prepare($sql);
		    $stmt->bindParam(":get_id",$this->id);
		    if ($stmt->execute()) {
		    	return true;
		    }
	}


}



 ?>
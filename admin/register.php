<?php  
include "database/database.php";
include "database/settings.php";
include "database/users.php";
$database = new database();
$db = $database->connect();

$users = new users($db);

$settings = new settings($db);
$settings->id = 1;
$settings->read();

if($_SERVER['REQUEST_METHOD']=='POST'){
  $username = $_POST['username'];
  $password = sha1($_POST['password']);

  $users->username = $username;
  $users->password = $password;
  
  /*Signup admin*/
  if($users->roleAdmin()->rowCount()==0){
    $users->name = $_POST['name'];
    $users->email = $_POST['email'];
    $users->phone = $_POST['phone'];
    $users->role = 2;
    $users->image = "guest.jpg";
    $users->email_verified = "verified";
    $users->status = 1;

    date_default_timezone_set($settings->site_timezone);
    $users->created_at = date("Y-m-d h:i:s",time());
    $users->updated_at = date("Y-m-d h:i:s",time());
    
    $users->create();
  }

  /*Signin user*/
  if($users->userLogin()->rowCount()>0){
    $row = $users->userLogin()->fetch();
    
    session_start();
    $_SESSION['user_id'] = $row['id'];
    $_SESSION['user_role'] = $row['role'];

    header("location:index.php");
  }else{
    $error = "Login false!";
  }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <title>Document</title>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap");
        :root {
            --bg: #efe9e6;
            --light: #ffffff73;
            --med: #ccc0ba;
            --dark: #595959;
            --dark-heavy: rgba(99, 73, 66, 0.29);
            --main-color: #ff7710;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
        }
        html, body {
            height: 100%;
            font-family: 'Montserrat', sans-serif;
        }
        body {
            display: grid;
            place-items: center;
            text-align: center;
            background: var(--bg);
        }
        .container {
            width: 400px;
            background: var(--bg);
            padding: 40px 30px;
            border-radius: 0 50px;
            box-shadow: -4px -4px 8px var(--light), 3px 3px 6px var(--dark-heavy);
        }
        .container .text {
            font-size: 32px;
            font-weight: 600;
            margin-bottom: 2.18rem;
            color: var(--dark);
        }
        .container .filed {
            display: flex;
            height: 3.12rem;
            width: 100%;
            position: relative;
        }
        .filed input {
            height: 100%;
            width: 100%;
            padding-left: 2.81rem;
            font-size: 16px;
            outline: none;
            background-color: var(--bg);
            color: var(--main-color);
            border: none;
            border-radius: 1.52rem;
            box-shadow: inset 1.5px 1.5px 4.5px var(--med), inset -4.5px -4.5px 9.5px var(--light);
        }
        .filed input:focus {
            box-shadow: inset 1px 1px 2px var(--med), inset -1px -1px 2px var(--light);        
        }
        .filed:nth-child(2) {
            margin-top: 1.25rem;
        }
        .filed:nth-child(3) {
            margin-top: 1.25rem;
        }
        .filed span {
            position: absolute;
            width: 3.12rem;
            line-height: 3.12rem;
            color: var(--dark);
        }
        .filed label {
            position: absolute;
            top: 50%;
            left: 2.812rem;
            pointer-events: none;
            color: var(--main-color);
            transform: translateY(-50%);
        }
        .filed input:valid ~ label {
            opacity: 0;
        }
        .forgot {
            text-align: center;
            margin: 0.5rem 0;
            color: var(--dark);
            font-size: 16px;
        }
        .forgot a {
            font-size: 16px;
            color: var(--main-color);
            text-decoration: none;
        }
        .forgot a:hover {
            text-decoration: underline;
        }
        button {
            margin: 0.9rem 0;
            width: 100%;
            height: 2.5rem;
            font-size: 18px;
            font-weight: 600;
            background: var(--bg);
            border: none;
            color: var(--dark);
            outline: none;
            cursor: pointer;
            border-radius: 1.52rem;
            box-shadow: inset 1.5px 1.5px 4.5px var(--med), inset -4.5px -4.5px 9.5px var(--light);
        }
        button:focus {
            color: var(--main-color);
            box-shadow: inset 1.5px 1.5px 4.5px var(--med), inset -4.5px -4.5px 9.5px var(--light);
        }
        .signup {
            font-size: 16px;
            color: var(--dark);
            margin: 0.5rem 0;
        }
        .signup a {
            text-decoration: none;
            color: var(--main-color);
        }
        .signup a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="text">Register Form</div>
        <form action="" method="POST">
            <div class="filed">
                <span class="fas fa-user"></span>
                <input type="text" name="username" id="username" required>
                <label for="username">Username</label>
            </div>
            <div class="filed">
                <span class="fas fa-envelope"></span>
                <input type="email" name="email" id="email" required>
                <label for="email">Email</label>
            </div>
            <div class="filed">
                <span class="fas fa-lock"></span>
                <input type="password" name="password" id="password" required>
                <label for="password">Password</label>
            </div>
            <div class="forgot">Forgot your password? <a href="#">Reset here</a></div>
            <button type="submit">Register</button>
            <div class="signup">Back To <a href="login.php">Login</a></div>
        </form>
    </div>
</body>
</html>

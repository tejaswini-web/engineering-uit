<?php 
include('connection.php');
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <title>BU Smart College App</title>
</head>
<body>
    

 <div class="container">
       
     <div class="row" id="main_entry">
          <div class="col-md-4 offset-4">
             <h3 class="text-center">BU-SMART-APP</h3>
             <?php 
                  if(isset($_POST['login']))
                  {
                       $username = $_POST['username'];
                       $password = $_POST['password']; 

                       $user_type = $_POST['user_type'];

                       if($user_type=="admin")
                       {
                           $qry="select * from admin where username='$username' && password='$password'";

                          
                           $ex = mysqli_query($con,$qry);
                           $count = mysqli_num_rows($ex);

                           if($count==1)
                           {
                             $_SESSION['user_admin'] = $username;
                             echo "<script> window.location.href='admin/dashboard.php'; </script>";

                           }
                           else 
                           {
                             echo "<script> alert('Wrong username & password'); </script>";
                           }
                       }
                       if($user_type=="student")
                       {
                           $qry="select * from student where enrollment='$username' && password='$password'";

                          
                           $ex = mysqli_query($con,$qry);
                           $count = mysqli_num_rows($ex);

                           if($count==1)
                           {
                             $_SESSION['user_student'] = $username;
                             echo "<script> window.location.href='student/dashboard.php'; </script>";

                           }
                           else 
                           {
                             echo "<script> alert('Wrong username & password'); </script>";
                           }
                       }
                       if($user_type=="teacher")
                       {
                           $qry="select * from teacher where email='$username' && password='$password'";

                          
                           $ex = mysqli_query($con,$qry);
                           $count = mysqli_num_rows($ex);

                           if($count==1)
                           {
                             $_SESSION['user_teacher'] = $username;
                             echo "<script> window.location.href='teacher/dashboard.php'; </script>";

                           }
                           else 
                           {
                             echo "<script> alert('Wrong username & password'); </script>";
                           }
                       }
                  }
             ?>
             <form action="" method="post">
                 <div class="form-group">
                   <label>Username</label>
                   <input type="text" class="form-control" name="username" />
                 </div>
                 <div class="form-group">
                   <label>Password</label>
                   <input type="password" class="form-control" name="password" />
                 </div>
                 <div class="form-group">
                   <label>User Type</label>
                   <select class="form-control" name="user_type"> 
                       <option value=""> Select User Type</option>
                       <option value="student">Student</option>
                       <option value="teacher">Teacher</option>
                       <option value="admin">Admin</option>
                   </select>
                 </div>
                 <div class="form-group">
                   
                   <input type="submit" class="btn btn-primary btn-block" name="login" value="Login"/>
                 </div>
               
             </form>
          </div>
          
     </div>

 </div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
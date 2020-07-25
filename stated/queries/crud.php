<?php
session_start();
include("db.php");

?>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <link rel="stylesheet" href="query.css"/>
    <link rel="stylesheet" href="bootstrapmin.css"/>
    <script src="jquerymin.js"></script>
    <script src="poppermin.js"></script>
    <script src="bootstrapmin.js"></script>

</head>
  <body>
    <div class="container-fluid">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12 mx-auto">
                    <div class="card card-signin my-5">
                        <div class="card-body">

                        <h3 class="h3 text-center text-capitalize text-primary">Student Information Insertion</h3>

            <form action="crud.php" method="post">
            <div class="col-md-4 form-group">
                <label for="sid">Student ID</label>
                <input type="text" name="sid" id="sid" class="form-control" required><hr>
            </div>

            <div class="col-md-4 form-group">
                <label for="sid">First Name</label>
                <input type="text" name="fname" id="fname" class="form-control" required>
            </div>

            <div class="col-md-4 form-group">
                <label for="sid">Last Name</label>
                <input type="text" name="lname" id="lname" class="form-control" required>
            </div>

            <div class="col-md-4 form-group">
                <label for="sid">Gender</label></br>
                <input type="radio" name="gender" value="male" class="form-check-input"><label for="sid" >Male</label>

               &emsp; <input type="radio" name="gender" value="female" class="form-check-input"><label for="sid" >Female</label>
            </div>

            <div class="col-md-4 form-group">
                <label for="sid">Date of Birth</label>
                <input type="date" name="dob" id="dob" class="form-control" required>
            </div>

            <div class="col-md-4 form-group">
                <label for="sid">Mobile</label>
                <input type="text" name="mb" id="mb" class="form-control" required>
            </div>

            <div class="col-md-4 form-group">
                <label for="sid">Email</label>
                <input type="email" name="mail" id="mail" class="form-control" required>
            </div>

            <div class="col-md-4 form-group">
                <label for="sid">Address</label>
                <input type="text" name="adr" id="adr" class="form-control" required>
            </div>

            <div class="col-md-4 form-group">
                <label for="sid">Parent Name</label>
                <input type="text" name="pname" id="pname" class="form-control" required>
            </div>

            <div class="col-md-4 form-group">
                <label for="sid">Quota</label>
                <input type="text" name="qt" id="qt" class="form-control" required>
            </div>

            <div class="col-md-4 form-group">
                <label for="sid">Year of Join</label>
                <input type="text" name="yoj" id="yoj" class="form-control" required>
            </div>

            <div class="col-md-4 form-group">
                <label for="sid">Parent Contact</label>
                <input type="text" name="pcnt" id="pcnt" class="form-control" required>
            </div>

            <div class="col-md-4 form-group">
                <label for="sid">Aadhaar Number</label>
                <input type="text" name="adhar" id="adhar" class="form-control" required>
            </div>

            <div class="col-md-4 form-group">
                    <label for="sid">Faculty Id</label>
                    <input type="text" name="fd" id="fd" class="form-control" required>
            </div>

            <div class="col-md-4 form-group">
                <button type="submit" name="ins"  class="btn btn-md btn-info">Insert</button>
            </div>
            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--php code -->
    <?php
    if(isset($_POST['ins'])) {
        $sid = $_POST['sid'];
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $gender= $_POST['gender'];
       $dob = $_POST['dob'];
        $mb = $_POST['mb'];
        $mail = $_POST['mail'];
        $adr = $_POST['adr'];
        $pname= $_POST['pname'];
        $qt = $_POST['qt'];
        $yoj = $_POST['yoj'];
        $pcnt = $_POST['pcnt'];
        $adhar = $_POST['adhar'];
        $fd=$_POST['fd'];


        $query = "INSERT INTO student(sid, fsname, lsname,gender,dob,mob,email,address,parentname,quota,yoj,pcontact,aadhar,fid)
                values('$sid','$fname','$lname','$dob','$gender',$mb,'$mail','$adr','$pname','$qt',$yoj,'$pcnt','$adhar','$fd')";


        $queryCheckId = mysqli_query($con, "select fid from faculty where fid = '$fd' ");

        $qcheck = mysqli_query($con,"select sid from student where sid='$sid'");

        if (mysqli_num_rows($queryCheckId) != 1) {
            $msg = "$fd does not exists,Enter valid id!";
            echo "<script type='text/javascript'> alert('$msg');</script>";
        } elseif ($qcheck!=0) {

            $data = mysqli_query($con, $query);
            echo '<script language="javascript">';
            echo "alert('$fname is successfully added!')";
            echo '</script>';
        } else {
            $msg = "Student already exists!";
            echo "<script type='text/javascript'> alert('$msg');</script>";
        }


    }



    ?>


  </body>
</html>

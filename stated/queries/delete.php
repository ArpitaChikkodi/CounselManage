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

                        <h3 class="h3 text-center text-capitalize text-primary">Student Information Deletion</h3>

                        <form action="" method="post">
                            <div class="col-md-4 form-group">
                                <label for="sid">Student ID</label>
                                <input type="text" name="sid" id="sid" class="form-control"><hr>
                            </div>
                            <div class="col-md-4 form-group">
                                <button type="submit" name="ins"  class="btn btn-md btn-info">Delete</button>
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

//    $fd=$_POST['fd'];


    $query = "delete from student where sid='$sid'";


//    $queryCheckId = mysqli_query($con, "select sid from student where sid = '$sid' ");

    $qcheck = mysqli_query($con,"select sid from student where sid='$sid'");

    if (mysqli_num_rows($qcheck) != 1) {
        $msg = "$sid does not exists,Enter valid id!";
        echo "<script type='text/javascript'> alert('$msg');</script>";
    } elseif ($qcheck=1) {

        $data = mysqli_query($con, $query);
        echo '<script language="javascript">';
        echo "alert('$sid is successfully deleted!')";
        echo '</script>';
    } else {
        $msg = "Cannot delete!";
        echo "<script type='text/javascript'> alert('$msg');</script>";
    }


}



?>


</body>
</html>

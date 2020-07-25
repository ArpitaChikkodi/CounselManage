<?php


include("db.php");

error_reporting(0);



$sql = "select fsname from Student s,Faculty f where s.fid=f.fid and fname='Rudra'";

$data = mysqli_query($con,$sql);

$total=mysqli_num_rows($data);

if($total!=0)
{

    ?>
    <html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="query.css"/>
        <link rel="stylesheet" href="bootstrapmin.css"/>
        <script src="jquerymin.js"></script>
        <script src="poppermin.js"></script>
        <script src="bootstrapmin.js"></script>


    </head>
    <html>
    <body style=" background:grey; background: linear-gradient(to left,whitesmoke,grey);">
    <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12 mx-auto">
                    <div class="card card-signin my-5">
                        <div class="card-body">
                            <h3 class="text-center md-4">Result</h3>

                        <table class="table">
    <thead>
    <tr>

        <th>Student Name</th>
    </tr>
    </thead>
    <tbody>



    <?php
    while($row=mysqli_fetch_assoc($data))
    {
        echo "<tr>
            <td>".$row['fsname']."</td>          
     </tr>";
    }

}
else
{
    echo "No records found!";

}
$con->close();

?>
    </tbody>
    </table>
                        </div>
                    </div>
                </div>
            </div>
</div>


</body>
</html>

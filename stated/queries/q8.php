<?php

include("db.php");

error_reporting(0);

$sql = "select fsname,lsname,parentname,pcontact from Student s,Faculty f where f.fid=s.fid and f.fname='Ramya' and sid NOT IN(select s.sid from Student s,Faculty f,Meeting m,Attend a,Conduct c where s.fid=f.fid and s.sid=a.sid and m.mid=a.mid and m.mid=c.mid and c.fid=f.fid and f.fname='Ramya' and m.date='2019-01-13');
";

$data = mysqli_query($con,$sql);

$total=mysqli_num_rows($data);

if($total!=0)
{

?>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="bootstrapmin.css"/>
    <script src="jquerymin.js"></script>
    <script src="poppermin.js"></script>
    <script src="bootstrapmin.js"></script>
    <title></title>

</head>
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
            <th>Faculty first Name</th>
            <th>Faculty last Name</th>
            <th>Parent</th>
            <th>contact</th>

        </tr>
        </thead>
        <tbody>



        <?php
        while($row=mysqli_fetch_assoc($data))
        {
            echo "<tr>
         
            <td>".$row['fsname']."</td>
            <td>".$row['lsname']."</td>
            <td>".$row['parentname']."</td>
           <td>".$row['pcontact']."</td>

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


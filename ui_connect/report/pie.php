<?php
    //Session Query
    require_once '../../ui_connect/login/query/session.php';?>
<?php

require_once '../../db_connect/dbconnection.php'; //connect to database
$sql = 'SELECT * FROM student_info';
$result = mysqli_query($link,$sql) or die(mysqli_error());

 if ($result=mysqli_query($link,$sql)){
    // Return the number of rows in result set
    $rowcount=mysqli_num_rows($result);

  }
//check if there are data in column
 if (mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
            $s_id[] = $row['s_id'];
            $s_fname[] = $row['s_fname'];
        }
        mysqli_free_result($result); // Free result set
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="utf-8">
    <?php //All the meta and css links
        require_once '../../web_elements/head_link.php';?>
    <title>Test Show pie from database</title>
    <link type="text/css" rel="stylesheet" href="css/default.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">

    <style>
        <?php require_once 'css/navbar.css';?> /*import css file to decorate navigation bar*/
        <?php require_once 'css/ghostbutton.css';?> /*import css file to decorate search button*/
        <?php require_once 'css/hoverbutton.css';?> /*import css file to decorate search button*/
        canvas {
                  padding-left: 0;
                  padding-right: 0;
                  margin-left: auto;
                  margin-right: auto;
                  display: block;
                  width: 800px;
                } /*Set canvas to center*/
    </style>
</head>
<div>
<body class="w3-theme-l5">

  <br>
  <br>
<div class="buttonbody">
<a href="../report/Report.php" class="ghost-button">Search</a>
</div>


      <?php require_once '../../web_elements/nav_bar.php';?>

<div class="container">
	<div class="row">
        <h4 class="text-center page-header">View By</h4>
        <!--there are many type of animation in hover button (1-8)-->
        <a href="../report/pie.php"><button class="btn-change2">Overview</button></a>
        <a href="../report/pie.php"><button class="btn-change2">University</button></a>
        <a href="../report/pie.php"><button class="btn-change2">Plant</button></a>
        <a href="../report/pie.php"><button class="btn-change2">Department</button></a>
        <a href="../report/pie.php"><button class="btn-change2">Location</button></a>
        <a href="../report/pie.php"><button class="btn-change2">Country</button></a>
        <a href="../report/pie.php"><button class="btn-change2">Status</button></a>
        <a href="../report/pie.php"><button class="btn-change2">Major</button></a>
        <a href="../report/pie.php"><button class="btn-change2">Degree</button></a>
        <br>
        <br>
	</div>
</div>
        <hr style="border: 0; border-bottom: 1px dashed #ccc; background: #999;">


<canvas id="myChart" height="600" width="600"></canvas>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.6/Chart.min.js"></script>
    <script>
        var ctx = document.getElementById("myChart").getContext("2d");
        //Set chart type ex: bar,pie,line etc.
        var type = 'pie';
        //Function Random color of pie piece
        var randomColor = function () {
            return '#' + (Math.random().toString(16) + '0000000').slice(2, 8);
          //return "#"+((1<<24)*Math.random()|0).toString(16);
        };
        //Set data to show in chart
        var data = {
            labels: <?=json_encode($s_fname)?>,
            datasets: [{
                label: 'Report',
                data: <?=json_encode($s_id, JSON_NUMERIC_CHECK);?>,
                backgroundColor: [
                  randomColor(),
                  randomColor(),
                  randomColor(),
                  randomColor(),
                  randomColor(),
                  randomColor(),
                  randomColor(),
                  randomColor(),
                  randomColor(),
                  randomColor(),
                  randomColor(),
                  randomColor(),
                ]
              ,
                borderColor: [],
                borderWidth: 1
            }]
        };
        //Set chart properties
        var options = {
            maintainAspectRatio: false,
            responsive: false,
            title: {
                display: true,
                position: "top",
                text: "Student Information",
                fontSize: 18,
                fontColor: "#000000"
            },
            legend: {
                display: true,
                position: "bottom",
                labels: {
                    fontColor: "#000000",
                    fontSize: 14
                }
            }
        };
        //Instantiate new object
        var myChart = new Chart(ctx, {type,data,options});
    </script>
<!--
    <script src="js/jquery.min.js"></script>
    <script src="js/Chart.min.js"></script>
    <script src="js/pie.js"></script>
-->
</div>
</body>
</html>

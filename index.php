<?php
include ("incl/header.incl.php");
?>
<h1>HOME</h1>
<div class="container">
    <div class="span">
        <div class="span span3" >
            <a href='farmers/index.php'>
                <img src="img/farmer1.png"><br/>
                <strong> Dairy Farmers</strong>
            </a>
        </div>
        <div class="span span3" >
            <a href='employees/index.php'>
                <img src="img/employee1.png"><br/>
                <strong>   Employees</strong>
            </a>
        </div>
        <div class="span span3" >
            <a href='delivery/index.php'>
                <img src="img/deliveryf.png"><br/>
                <strong>  Deliveries</strong>
            </a>
        </div>
        <div class="span span3" >
           <a href='reports/index.php'>
                <img src="img/report1.png"><br/>
                <strong>  Reports</strong>
            </a>
        </div>
        <!-- <div class="span span3" >
            <a href='payment/index.php'>
                <img src="img/payment1.png"><br/>
                <strong> Payments</strong>
            </a>
        </div> -->
        <!-- Extra code for views and triggers -->
         <div class="span span3" >
            <a href='view/index.php'>
                <img src="img/leaderboard.png"><br/>
                <strong>Leader Board</strong>
            </a>
        </div> 
        <div class="span span3" >
            <a href='view/index2.php'>
                <img width=200 src="img/zoom.png"><br/>
                <strong>View</strong>
            </a>
        </div> 
    </div>

</div>

<?php
$footer = 'incl/footer.incl.php';
include ("$footer");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <script type="text/javascript" src="<?php Page_Url() ?>js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="<?php Page_Url() ?>js/bootstrap.js"></script>
    <script type="text/javascript" src="<?php Page_Url() ?>js/bootstrap-datetimepicker.min.js"></script>

    <link type="text/css" rel="stylesheet" href="<?php Page_Url() ?>css/bootstrap.css" /> 
    <link type="text/css" rel="stylesheet" href="<?php Page_Url() ?>css/bootstrap-responsive.css" />
    <link type="text/css" rel="stylesheet" href="<?php Page_Url() ?>css/main.css" />
    <link type="text/css" rel="stylesheet" href="<?php Page_Url() ?>css/bootstrap-datetimepicker.min.css" />
    <title>Dairy Mananagement System - Login</title>
    <style>
    #logo {
    float: left;
    margin-left: 68px;
    }
    img {
        width: auto\9;
        height: 80px;
        max-width: 100%;
        vertical-align: middle;
        border: 0;
        -ms-interpolation-mode: bicubic;
    }
    </style>
    <script>
    // Function to clear input fields after a delay
    function clearInputFields() {
        setTimeout(function() {
            document.getElementById('username').value = '';
            document.getElementById('password').value = '';
        }, 200); // Delay in milliseconds
    }

    // Call clearInputFields function when the page loads
    window.onload = clearInputFields;
    </script>
</head>
<body>
    <div id="top" class="page-header">
        <a href="<?php Page_Url(); ?>"><img src="<?php Page_Url() ?>img/logotop.png"/ alt="logo" id="logo"></a>

        <div id="navigation" class="navbar ">
            <h1 id="title" >DAIRY MANAGEMENT SYSTEM</h1>
        </div>
    </div>

    <div class="container">
        <div class="wrapper">
            <form name="<?php echo $formname; ?>" method="post" class="form-signin form-horizontal <?php echo $formclass ?>" enctype="application/x-www-form-urlencoded" action="<?php echo $formaction ?>">       
                <h3 class="form-signin-heading">Welcome Back! Please Sign In</h3>
                <hr class="colorgraph"><br>

                <input type="text" class="form-control input-xlarge input-block-level" id="username" name="username" placeholder="Username/Email" required="" autofocus="" autocomplete="off" /> 
                <input type="password" class="form-control input-xlarge input-block-level input" id="password" name="password" placeholder="Password" required="" autocomplete="off" />     		  
                <input name="action" id="action" value="login" type="hidden">
                <input class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">  			
            </form>			
        </div>
    </div>

    <?php
        include __DIR__ . "/../incl/footer.incl.php"
    ?>
</body>
</html>

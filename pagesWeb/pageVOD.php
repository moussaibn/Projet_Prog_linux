<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>APPLICATION SHELL</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->

    <!-- CUSTOM STYLE  -->
    <link href="style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>
    <div class="navbar navbar-inverse set-radius-zero" >
        <div class="container">
            <div class="navbar-header">
            <h1 > <img src="logo.ico" />PLATEFORME EDUCATIVE</h1> 
           </div>

        </div>
    </div>
     <!-- MENU SECTION END-->
    <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line"><?php echo $_GET['nom'];?></h4>
                
                            </div>

        </div>

             
             <div class="row">

              <div class="col-md-8 col-sm-8 col-xs-12">
              <?php
                    $video = "http://localhost/Projet_Prog_linux-master/Ressources/Videos/".$_GET['nom'];

                    print   "<video controls autoplay name='media'>
                     <source type='video/mp4' src='$video'>
                                Ici la description alternative
                 </video>" ;

            ?>
                 
                        

                 </div>
                
            
</body>

</html>>

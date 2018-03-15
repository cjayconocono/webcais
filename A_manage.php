<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>ELRN | BOOK</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
  <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
      <link rel="stylesheet" href="content/cd.css">
      <link rel="stylesheet" type="text/css" href="sm/dist/sweetalert.css">
      <script src="sm/dist/sweetalert.min.js"></script>

        <link rel="stylesheet" href="content/color.css">

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

<?php include("admin_header.php"); ?>
<?php include("admin_sidebar.php"); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">

    <!-- Main content -->
    <section class="content container-fluid">

 



<div class="row">


        <div class="col-lg-3 col-xs-6" style="width: 500px;">
          <!-- small box -->
          <div class="small-box bg-green" >
            <div class="inner">
              <h3>150</h3>

              <p>Admin Total</p>
            </div>
            <div class="icon">
              <i class="fa fa-user"></i>
            </div>
            <a href="A_manage_admin.php" class="small-box-footer">
              Manage Admin Accounts &nbsp; <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>

        <div class="col-lg-3 col-xs-6" style="width: 500px;">
          <!-- small box -->
          <div class="small-box bg-aqua" >
            <div class="inner">
              <h3>150</h3>

              <p>Student Total</p>
            </div>
            <div class="icon">
              <i class="fa fa-users"></i>
            </div>
            <a href="A_manage_student.php" class="small-box-footer">
             Manage Student Accounts &nbsp;  <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>

</div>











    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

 
<!-- REQUIRED JS SCRIPTS -->
<?php include("admin_footer.php"); ?>
</div>
<!-- ./wrapper -->
<?php include("admin_scripts.php"); ?>
</body>
</html> 
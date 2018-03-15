
<html>
<head>
 
<?php include 'A_include_headerlinks.php'; ?>


</head>

<body class="hold-transition skin-blue sidebar-mini">
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
<div class="wrapper">


  <?php include 'A_include_navigation.php'; ?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">

    <!-- Main content -->
    <section class="content container-fluid">

    <?php  

      if(!isset($_GET['x']))
      {

      }
      elseif ( ($_GET['x'])=='BOOK')
      {
            include 'A_include_book.php';
      }
      

      elseif ( ($_GET['x'])=='CHAPTER')
      {
            include 'P_include_create_chapter.php';
      }


      elseif ( ($_GET['x'])=='CONTENT')
      {
            include 'P_include_create_contenttools.php';
      }
       elseif ( ($_GET['x'])=='EXAM')
      {
            include 'P_include_create_exam.php';
      }
      


      elseif ( ($_GET['x'])=='NOTIFICATION')
      {
            include 'P_include_notification.php';
      }
      else
      {

      }

    ?>






    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

</div>
<!-- ./wrapper -->



</body>
</html>
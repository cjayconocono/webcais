<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <?php include("admin_headlink.php"); ?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
<?php include("admin_header.php"); ?>
<?php include("admin_sidebar.php"); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">

    <!-- Main content -->
    <section class="content container-fluid">

  


<div class="col-md-4" style="padding: 40px 0px;">

    <div class="clash-card " >

        <div class='clash-card__image clash-card__image bgcolor2' >
           <img src='content/1.png' />";
        </div>

      <div class="clash-card__unit-name"><p>COURSE 1</p></div>
  


        <div id='panel' style='display: none;'>  
        <hr>
        <button style="width: 80%;"   id="MODULE 1"  class="btn btn-success view_module" > <a href="A_book_chapters.html" style="color: white;">BOOK 1 </a></button><br>
        </div>
        <hr>
                          <div class='clash-card__unit-stats clash-card__unit-stats clearfix bgcolor2' >
                                <a onclick="panel()" style="cursor: pointer;">
                                <h5 class="mb-0" style="margin-bottom: 0px">
                                <div style="font-size: 1em;padding: 10px 20px;" class="color5"><b>COMPLETED</b></div>
                                </h5>
                                </a>
                          </div> 
    </div> <!-- end clash-card barbarian-->

</div>  




















    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<?php include("admin_footer.php"); ?>
</div>
<!-- ./wrapper -->
<?php include("admin_scripts.php"); ?>
</body>
</html> 
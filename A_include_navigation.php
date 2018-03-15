  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="P_index.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>ELRN</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>E LEARNING</b></span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
       
                  <a href="#" class="btn  btn-flat" style="background-color: #3c8dbc;color:white;padding:14px;">ZAPLAN</a>
                  <a href="#" class="btn  btn-flat" style="background-color: #3c8dbc;color:white;padding:14px;">Sign out</a>
           
          <!-- Control Sidebar Toggle Button -->
         
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">DASHBOARD</li>
        <!-- Optionally, you can add icons to the links -->

        <li <?php if ($_GET['x']=='BOOK') {echo 'class="active"'; } else {} ?> ><a href="?x=BOOK"><i class="fa fa-book"></i> <span>BOOK</span></a></li>

         <li  <?php if ($_GET['x']=='STUDENT LIST') {echo 'class="active"'; } else {} ?>><a href="?x=STUDENT LIST"><i class="fa fa-pencil-square-o"></i> <span>STUDENT LIST</span></a></li>

          <li  <?php if ($_GET['x']=='HISTORY LOGS') {echo 'class="active"'; } else {} ?>><a href="?x=HISTORY LOGS"><i class="fa fa-map-pin"></i> <span>HISTORY LOGS</span></a></li>

          <li  <?php if ($_GET['x']=='MANGE ACCOUNTS') {echo 'class="active"'; } else {} ?>><a href="?x=MANGE ACCOUNTS"><i class="fa fa-users"></i> <span>MANGE ACCOUNTS</span></a></li>



        <li  <?php if ($_GET['x']=='NOTIFICATION') {echo 'class="active"'; } else {} ?>><a href="?x=NOTIFICATION"><i class="fa fa-exclamation-circle"></i> <span>NOTIFICATION</span></a></li>




<!-- 
           <li><a href="A_book.php"><i class="fa fa-book"></i> <span>BOOK</span></a></li>
        <li><a href="A_student_list.php"><i class="fa fa-pencil-square-o"></i> <span>STUDENT LIST</span></a></li>

        <li><a href="A_logs.php"><i class="fa fa-map-pin"></i> <span>HISTORY LOGS</span></a></li>


        <li><a href="A_manage.php"><i class="fa fa-users"></i> <span>MANAGE ACCOUNTS</span></a></li>

        <li><a href="A_notice.php"><i class="fa fa-info-circle"></i> <span>NOTICE</span></a></li> -->
        
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>
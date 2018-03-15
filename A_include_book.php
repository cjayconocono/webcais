  <link rel="stylesheet" href="content/cd.css"> 
   <link rel="stylesheet" href="sm/dist/sweetalert.css">
  <script src="sm/dist/sweetalert.min.js"></script>

  <link rel="stylesheet" href="content/color.css">







<div class="col-md-4" style="padding: 40px 0px;">

    <div class="clash-card " >

        <div class='clash-card__image clash-card__image bgcolor2' >
           <img src='content/1.png' />
        </div>

      <div class="clash-card__unit-name"><p>BOOK</p><p style="font-size: 0.4em;">SALVO</p></div>

  <div id='panel' style='display: none;'>  
        <hr>
        <button style="width: 80%;"   id="MODULE 1"  class="btn btn-success view_module" > <a href="A_book_chapters.php" style="color: white;">BOOK 1 </a></button><br>
        </div>
        <hr>
                      <div class="clash-card__unit-stats clearfix bgcolor2" >
                      	<a onclick="panel()" style="cursor: pointer;">

                    
                       <div style="font-size: 1em;padding: 10px 20px;" class="color5"><b>STATUS</b></div>
                      	</a>
      </div>

    </div> <!-- end clash-card -->

</div>  










  <!-- jQuery 3 -->
<script src="AdminLTE/AdminLTE-2.4.0-rc/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="AdminLTE/AdminLTE-2.4.0-rc/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="AdminLTE/AdminLTE-2.4.0-rc/dist/js/adminlte.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->



      <script type="text/javascript">
          function panel()
          {
          $("#panel").slideToggle("slow");
          }
     </script>
<!DOCTYPE html>
<!----------------------------------------------------------------------------------------------------------------
--
#Original Author:  Luke Brandt                                  #
#Date Created:   1/28/2021                                #
#Version:1.0                                                #
#Date Last Modified: 2/16/2021                             #
#Modified by:  Luke Brandt                                        #
#Modification log:                                  #

9/17/2021 error page
9/17/2021 added admin and employees to navigation bar
 --
 
------------------------------------------------------------------------------------------------------------------>
<?php
    


?>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Caped Crusader Comics</title>
    <link rel="stylesheet" href="styles/style.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
      rel="stylesheet"
    />
    <link rel="icon" type="image/jpeg" href="images/pow.jpg"/>
  </head>
  <body>
    <header>
      <div id="caped">
        <a href="index.html"><h1>Caped Crusader Comics</h1></a>
      </div>
    </header>
    <div class="secondBox">
      <main>
        <nav>
          <div class="menu">
            <a href="index.html">Home</a>
            <a href="order.html">Order</a>

            <a href="location.html">Contact Us</a>
            <a href="help.html">Help</a>
            
          </div>
          <!--end menu div-->
        </nav>
        
          <!--End location div-->
         <div class="container">
          <div class="contact_form">
            <h2>ERROR</h2>
            <h3 style="color:red"><?php echo $error; ?></h3>
<!--            <p>Note: Echos error variable, will display undefined error if run by itself.</p>-->
          </div>
          <!--end contact form div-->
        </div>
    </div>
        <!--end container div-->
        
        <script src="java/contact_form.js"></script>
      </main>

      <footer>
        <p>Caped Crusader Comics &copy; 1995</p>
        <p><a href="tel:12223334444">208-56-Comic</a></p>
        <p><a href="mailto:#@gmail.com">capedcrusadercomics@gmail.com</a></p>
        <p>
            <a href="admin.php">Admin</a>
            &nbsp;
            <a href="listemployees.php">Employees</a>
        </p>
      </footer>
    </div>
    <!--End second box div-->
  </body>
</html>

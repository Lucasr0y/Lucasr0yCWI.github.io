<!DOCTYPE html>
<?php
/***************************************************************************
 * Date       Name        Descritption
 * ---------- ------------ -----------------------------------------------
 * 9/14/21    Luke Brandt  Initital deployment of listemployee page.
 * 9/22/2021  Luke Brandt  Added authentication & secure connection.
 * 
 * ************************************************************************
 */

require_once('./model/database.php');
require_once('./util/secure_conn.php');
require_once('./util/valid_admin.php');
require_once('./model/employee.php');


$employees = EmployeeDB::getEmployees();
    
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
              <h2>Employee List</h2>
              <p>
              <ul>
                  <?php foreach ($employees as $employee) :?>
                  <li style="color:black">
                      <?php echo $employee->getLastName() . ', ' . $employee->getFirstName();?>       
                  </li>
                  <?php endforeach;?>
              </ul>
              </p>
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

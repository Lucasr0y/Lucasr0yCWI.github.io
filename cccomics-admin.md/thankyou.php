<!DOCTYPE html>
<!----------------------------------------------------------------------------------------------------------------
--
#Original Author:  Luke Brandt                                  #
#Date Created:  9/3/2021                                #
#Version:1.0                                                #
#Date Last Modified: 2/16/2021                             #
#Modified by:  Luke Brandt                                        #
#Modification log:                                  #

9/17/2021   added employees and admin to navigation bar
9/23/2021   added input validation for contact fields
 --
 
------------------------------------------------------------------------------------------------------------------>
<?php
    
    $name = filter_input(INPUT_POST, 'contact_name');
    $email = filter_input(INPUT_POST, 'contact_email');
    $phone = filter_input(INPUT_POST, 'contact_phone');
    $reason = filter_input(INPUT_POST, 'contact_reason');
    $comments = filter_input(INPUT_POST, 'comments');
    $contact_method = filter_input(INPUT_POST, 'contact_sel');
    /* echo "Fields: " . $visitor_name . $visitor_email . $visitor_msg;  */
    $phone_pattern = '/^[[:digit:]]{3}-[[:digit:]]{3}-[[:digit:]]{4}$/';
    // Validate inputs
//    if ($name == null || $reason == null || 
//            $email == null || $phone == null) {
//        $error = "Invalid input data. Check all fields and try again.";
//         include('error.php');
    if ($name == null){
            $error = "Please enter first and last name.";
            include('error.php');    
            exit();
        }else if ($email == null || (!filter_var($email, FILTER_VALIDATE_EMAIL))){
            $error = "Please enter a valid email address.";
            include('error.php');    
            exit();       
        }else if ($phone == null || !preg_match($phone_pattern, $phone)){    
           $error = "Please enter a valid phone as 999-999-9999.";
            include('error.php');    
            exit();
        }else if($reason == null){
            $error = "Please select a reason for contacting us.";
            include('error.php');    
            exit();
        }else {
            try{
                require_once('./model/database.php');
                require_once('./model/visit.php');
                addVisit($name, $email, $phone, $reason, $comments, $contact_method);
            } catch (Exception $e){
                $error = $e->getMessage();
                include('error.php');    
                exit();
            }
        }
            

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
            <h2>Contact us with any questions</h2>
            <h3>Thank you, <?php echo $name; ?>, for contacting us! We will get back to you shortly 
                in regards to "<?php echo $reason; ?>".</h3>
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

<!DOCTYPE html>
<!----------------------------------------------------------------------------------------------------------------
--
#Original Author:  Luke Brandt                                  #
#Date Created:   1/28/2021                                #
#Version:1.0                                                #
#Date Last Modified: 2/16/2021                             #
#Modified by:  Luke Brandt                                        #
#Modification log:                                  #

2/16/2021

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
    
    // Validate inputs
    if ($name == null || $reason == null || 
            $email == null || $phone == null) {
        $error = "Invalid input data. Check all fields and try again.";
        /* include('error.php'); */
        $error = "Invalid input data. Check all fields and try again.";
        /* include('error.php'); */
        echo "Form Data Error: " . $error; 
        exit();
        } else {
            $dsn = 'mysql:host=localhost;dbname=ccComicsContact';
            $username = 'comics_user';   //'ej_user';
            $password = 'Pa$$w0rd';

            try {
                $db = new PDO($dsn, $username, $password);

            } catch (PDOException $e) {
                $error_message = $e->getMessage();
                /* include('database_error.php'); */
                echo "DB Error: " . $error_message; 
                exit();
            }

            // Add the product to the database  
            $query = 'INSERT INTO contact_table
                        (contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
                      VALUES
                       (:name, :email, :phone, :reason, :method, :comments, NOW(), 1)';
                      
            $statement = $db->prepare($query);
            $statement->bindValue(':name', $name);
            $statement->bindValue(':email', $email);
            $statement->bindValue(':phone', $phone);
            $statement->bindValue(':reason', $reason);
            $statement->bindValue(':comments', $comments);
            $statement->bindValue(':method', $contact_method);
            $statement->execute();
            $statement->closeCursor();
//             echo "Fields: " . $name. $email . $phone . $reason . $comments .
//                     $contact_method; 

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
         <div class="location">
          <div class="contact_form">
            <h2>Contact us with any questions</h2>
            <h2>Thank you, <?php echo $name; ?>, for contacting me! I will get back to you shortly.</h2>
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
      </footer>
    </div>
    <!--End second box div-->
  </body>
</html>

<!DOCTYPE html>//
<!----------------------------------------------------------------------------------------------------------------
--
#Original Author:  Luke Brandt                                  #
#Date Created:   9/10/2021                               #
#Version:1.0                                                #
#Date Last Modified: 9/10/2021                            #
#Modified by:  Luke Brandt                                        #
#Modification log:                                  #



 --
 
------------------------------------------------------------------------------------------------------------------>
<?php
            //connect to db
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
            
            // Check action: on inital load it is null
            $action = filter_input(INPUT_POST, 'action');
            if($action == NULL){
                $action = filter_input(INPUT_GET, 'action');
                if($action == NULL){
                    $action = 'list_visits';
                }
            }
            
        if($action == 'list_visits'){
                
            
            
            //get employee number
            $employee_id = filter_input(INPUT_GET, 'employee_id',FILTER_VALIDATE_INT);
            if ($employee_id == NULL || $employee_id == FALSE) {
                $employee_id = 1;
            }
            
            
            try {
            //get visit info for employee
            $queryEmployee = 'SELECT * FROM employee';
                  
                    $statement1 = $db->prepare($queryEmployee);
                    $statement1->execute();
                    $employees = $statement1;
                    
            //get visit info for employee
            $query2 = 'SELECT contact_info_id, contact_table.contact_name, contact_table.contact_email, contact_reason, contact_table.contact_comments, contact_method
            FROM contact_table
            JOIN employee on contact_table.employee_id = employee.employee_id
            WHERE employee.employee_id = :employee_id
            ORDER BY contact_date';
            $statement2 = $db->prepare($query2);
            $statement2->bindValue(':employee_id', $employee_id);
            $statement2->execute();
            $visits = $statement2;
            
            } catch (PDOException $e){
                echo 'Erro: '. $e->getMessage();
            }
            
        }else if ($action == 'delete_visit'){
           $visit_id = filter_input(INPUT_POST, 'visit_id', FILTER_VALIDATE_INT);
           $query3 = 'DELETE FROM contact_table
                     WHERE contact_info_id = :visit_id';
           $statement3 = $db->prepare($query3);
           $statement3->bindValue(':visit_id', $visit_id);
           $statement3->execute();
           $statement3->closeCursor();
           echo $visit_id;
           header("Location: admin.php");
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
              <h1>ADMIN</h1>
              <h3>Select an employee to view</h3>
              <aside>
<!--                   list employees -->
                  <ul style="list-style-type:none;">
                      <?php foreach ($employees as $employee) : ?>
                      <li>
                          <a href="?employee_id=<?php echo $employee['employee_id']; ?>">
                              <?php echo $employee['first_name']. ' ' . $employee['last_name'] ?>
                          </a>
                      </li>
                      <?php endforeach; ?>
                  </ul>
              </aside>
              <table>
                  <tr>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Reason</th>
                      <th>Comments</th>
                      <th>Method</th>
                      <th></th>
                  </tr>
                  <?php foreach ($visits as $visit) : ?>
                    <tr>
                        <td><?php echo $visit['contact_name'] ?></td>
                        <td><?php echo $visit['contact_email'] ?></td>
                        <td><?php echo $visit['contact_reason'] ?></td>
                        <td><?php echo $visit['contact_comments'] ?></td>
                        <td><?php echo $visit['contact_method'] ?></td>
                        <td>
                            <form action="admin.php" method="post" >
                                <input type="hidden" name="action" value="delete_visit" />
                                <input type="hidden" name="visit_id" 
                                       value="<?php echo $visit['contact_info_id'] ?>" />
                                <input type="submit" value="Delete" />
                            </form>
                        </td>
                    </tr>
                  <?php endforeach; ?>
              </table>
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

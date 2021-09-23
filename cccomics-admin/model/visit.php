<?php
/***************************************************************************
 * Date       Name        Descritption
 * ---------- ------------ -----------------------------------------------
 * 9/17/21    Luke Brandt  Initital deployment of visit functions.
 * 
 * 
 * ************************************************************************
 */

function getVisitByEmployee($employee_id){
    $db = Database::getDB();
    $query2 = 'SELECT contact_info_id, contact_table.contact_name, contact_table.contact_email, contact_reason, contact_table.contact_comments, contact_method
            FROM contact_table
            JOIN employee on contact_table.employee_id = employee.employee_id
            WHERE employee.employee_id = :employee_id
            ORDER BY contact_date';
    $statement2 = $db->prepare($query2);
    $statement2->bindValue(':employee_id', $employee_id);
    $statement2->execute();
    $visits = $statement2;
    return $visits;
}

function deleteVisit($visit_id){
    $db = Database::getDB();
    $visit_id = filter_input(INPUT_POST, 'visit_id', FILTER_VALIDATE_INT);
    $query3 = 'DELETE FROM contact_table
                     WHERE contact_info_id = :visit_id';
    $statement3 = $db->prepare($query3);
    $statement3->bindValue(':visit_id', $visit_id);
    $statement3->execute();
    $statement3->closeCursor();
           //echo $visit_id;
}
function addVisit($name, $email, $phone, $reason, $comments, $contact_method){
     $query = 'INSERT INTO contact_table
                        (contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
                      VALUES
                       (:name, :email, :phone, :reason, :method, :comments, NOW(), 1)';
            $db = Database::getDB();          
            $statement = $db->prepare($query);
            $statement->bindValue(':name', $name);
            $statement->bindValue(':email', $email);
            $statement->bindValue(':phone', $phone);
            $statement->bindValue(':reason', $reason);
            $statement->bindValue(':comments', $comments);
            $statement->bindValue(':method', $contact_method);
            $statement->execute();
            $statement->closeCursor();
}
?>


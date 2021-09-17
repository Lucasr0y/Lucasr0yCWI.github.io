<?php
/***************************************************************************
 * Date       Name        Descritption
 * ---------- ------------ -----------------------------------------------
 * 9/17/21    Luke Brandt  Initital deployment of the database class.
 * 
 * 
 * ************************************************************************
 */

 class Database {
    private static $dsn = 'mysql:host=localhost;dbname=ccComicsContact';
    private static $username = 'comics_user';
    private static $password = 'Pa$$w0rd';
    private static $db;

    private function __construct() {}
    
    public static function getDB () {
        if (!isset(self::$db)) {
            try {
                self::$db = new PDO(self::$dsn,
                                     self::$username,
                                     self::$password);
            } catch (PDOException $e) {
                echo "Problem connecting to DB";
                exit();
            }
        }
        return self::$db;
    }
}



?>


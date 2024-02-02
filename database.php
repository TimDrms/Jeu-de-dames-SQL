<?php

    define('HOST','localhost');
    define('DB_NAME','id18651146_database');
    define('USER', 'id18651146_db');
    define('PASS','$i6ctX!Ker63?$Dc');

    try{
        $db = new PDO("mysql:host=" . HOST . ";dbname=" . DB_NAME, USER, PASS);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch(PDOException $e){
        echo $e;
    }
?>
    

<?php
session_start();
include "dbh.inc.php";


if(!empty($_SESSION["role"])){
    date_default_timezone_set('Europe/Ljubljana');
    
    if(time() - $_SESSION["startTime"] > 900){
        session_unset();
        session_destroy();
        header("Location: logout.php");
    }else{
        $_SESSION["startTime"] = time();
    }

    $ar = $_GET['id'];


    $sql = "DELETE FROM novica1 WHERE id='$ar';";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
    echo $sql;
        echo "There was an erro1r!";
        exit();
    }else{
        mysqli_stmt_execute($stmt);        
    }
        mysqli_stmt_close($stmt);
        header("Location: home1.php");

}
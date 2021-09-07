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


    $sql = "DELETE FROM userlogs WHERE ar='$ar';";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
    echo $sql;
        echo "There was an erro1r!";
        exit();
    }else{
        mysqli_stmt_execute($stmt);        
    }
    include "dbh.inc.php";
    $sql = "DELETE FROM uporabniki WHERE ar='$ar';";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
        header("Location: UserLogs.php?There was an error!");
        echo "There was an error!";
        exit();
    }else{
        mysqli_stmt_execute($stmt);        
        header("Location: UserLogs.php");
    }

}
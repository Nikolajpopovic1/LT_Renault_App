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

    $id = $_GET['id'];
    $ar1 = $_GET['fref'];
    $lt = "lt".$ar1;
    $sql = "DELETE FROM ".$lt." WHERE id='$id';";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
    echo $sql;
        echo "There was an erro1r!";
        exit();
    }else{
        mysqli_stmt_execute($stmt);        
    }
        mysqli_stmt_close($stmt);


    header("Location: bbtable.php?id=$ar1");
}
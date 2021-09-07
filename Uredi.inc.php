<?php
session_start();

if(!empty(isset($_SESSION["role"]))){ 
    date_default_timezone_set('Europe/Ljubljana');
    
    if(time() - $_SESSION["startTime"] > 900){
        session_unset();
        session_destroy();
        header("Location: logout.php");
    }else{
        $_SESSION["startTime"] = time();
    }

                
    if(!empty($_SESSION["role"])){  
        if(!strcmp($_SESSION["role"],"Admin")){

if(isset($_POST["submit"])){
    $Ar = $_POST["Ar"];
    $mail = $_POST["Mail"];
    $ime = $_POST["Ime"];
    $pass = $_POST["password"];
    $role = $_POST["Role"];

    if(!strcmp($_SESSION["ar"],$Ar)){
        $_SESSION["ime"] = $ime;
        $_SESSION["role"] = $role;
    }
    require_once 'dbh.inc.php';
    require_once 'functions.inc.php';
    if(emptyInputSignup($Ar,$mail,$ime,"***",$role) !== false){
        header("location: UrediUporabnika.php?arr=".$Ar."&error=Manjka");
        exit();
    }
    
    if(invalidEmail($mail) !== false){
        header("location: UrediUporabnika.php?arr=".$Ar."&error=WrMail");
        exit();
    }    
    if(!empty($pass)){
        if(ManageUser($conn,$Ar,$mail,$ime,$pass,$role) !== false){
                header("location: UrediUporabnika.php?arr=".$Ar."&error=Nemorem");
                exit();
        }
    }else{
        if(ManageUserNoPWd($conn,$Ar,$mail,$ime,$role) !== false){
            header("location: UrediUporabnika.php?error=Nemorem");
            exit();
        }
    }
}}
    header("location: UserLogs.php");
}else{
    header("location: UserLogs.php");
    exit();
}

}
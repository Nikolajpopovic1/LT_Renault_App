<?php



if(isset($_POST["submit"])){
    $Ar = $_POST["Ar"];
    $mail = $_POST["Mail"];
    $ime = $_POST["Ime"];
    $pass = $_POST["password"];
    $role = "user";

    require_once 'dbh.inc.php';
    require_once 'functions.inc.php';
    if(emptyInputSignup($Ar,$mail,$ime,$pass,$role) !== false){
        header("location: Registracija.php?error=Manjka");
        exit();
    }
    
    if(invalidEmail($mail) !== false){
        header("location: Registracija.php?error=WrMail");
        exit();
    }    
    if(UporabnikObstaja($conn,$Ar,$mail,$ime) !== false){
        header("location: Registracija.php?error=Obstaja");
        exit();
    }
    
    if(createUser($conn,$Ar,$mail,$ime,$pass,$role) !== false){
        header("location: Registracija.php?error=Nemorem");
        exit();
    }
   
    
    header("location: login.php");
    
}else{
    header("location: login.php");
    exit();
}
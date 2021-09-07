<?php

function emptyInputSignup($Ar,$mail,$ime,$pass,$role){
    $result;
    if(empty($Ar)||empty($mail)||empty($ime)||empty($pass)||empty($role)){
        $result = true;
    }else{
        $result = false;
    }
    return $result;
}



function WritteLog($username,$logtxt){
    date_default_timezone_set('Europe/Ljubljana');
    $time = time();
    $time = (date("Y-m-d H:i:s",$time));
    require 'dbh.inc.php';
    $ip = $_SERVER['REMOTE_ADDR'];
    $sql = "INSERT INTO userlogs  (ar, time, dejavnost, ip) values(?, ?, ?, ?)";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
        echo "there was an error1";
        exit();
    }else{  
    mysqli_stmt_bind_param($stmt,"ssss",$username,$time,$logtxt,$ip);
    mysqli_stmt_execute($stmt);        
 
    }
    mysqli_stmt_close($stmt);   

}

function invalidEmail($mail){
    $result;
    if(!filter_var($mail,FILTER_VALIDATE_EMAIL)){
        $result = true;  
    }else{
        $result = false; 
    }
    return $result;
}






function emptyInputLogin($username ,$pwd){
    $result;
    if(empty($username) || empty($pwd)){
        $result = true;
    }
    else{
        $result = false;
    }
    return $result;
}

function UporabnikObstaja($conn,$Ar,$mail,$ime){
    $sql = "SELECT * FROM uporabniki WHERE ar = ? OR mail = ? OR ime = ?;";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
        header("location: Registracija.php?error=stmtfailed");
        exit();
    }
    
    mysqli_stmt_bind_param($stmt,"sss",$username,$mail,$ime);
    mysqli_stmt_execute($stmt);

    $resultData = mysqli_stmt_get_result($stmt);
    if($row = mysqli_fetch_assoc($resultData)){
        return $row;

    }else{
        $result = false;
        return $result;
    }
}
function CreateUser($conn,$Ar,$mail,$ime,$pwd,$row){
    $sql = "INSERT INTO uporabniki(ar,mail,ime, geslo, role) values(?, ?, ?, ?, ?);";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
        header("location: Registracija.php?error=stmtfail");
        exit();
    }
    
    $salted = "burger".$pwd."everest";
    $hashed = hash('sha512', $salted);
    $geslo = $hashed;
    
    mysqli_stmt_bind_param($stmt,"sssss",$Ar,$mail,$ime,$geslo,$row);
    $resultData = mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);
    header("location: login.php?");
    exit();
}
 
function uidExists($conn,$username,$email){
    $sql = "SELECT * FROM uporabniki WHERE ar = ? OR mail = ?;";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
        header("location: Registracija.php?error=stmtfailed");
        exit();
    }
    
    mysqli_stmt_bind_param($stmt,"ss",$username,$email);
    mysqli_stmt_execute($stmt);

    $resultData = mysqli_stmt_get_result($stmt);
    if($row = mysqli_fetch_assoc($resultData)){
        return $row;

    }else{
        $result = false;
        return $result;
    }
}


function loginUser($conn,$username,$pwd){
    $logtxt ="Uspesna prijava";
    $uidExist = uidExists($conn,$username,$username);
    
    if($uidExist === false){
        header("location: login.php?error=passwordsdontmatch");
        $logtxt ="Neuspesna prijava";
        WritteLog($username,$logtxt);
        exit();
    } 
    $pwdHashed = $uidExist["geslo"];

    $geslo1 = $pwd;
    $salted = "burger".$geslo1."everest";
    $hashed = hash('sha512', $salted);
    $geslo = $hashed;
    
    $var;
    if($geslo == $pwdHashed){
        $var = 'true';
    }else{
        $var = 'false';
    }


    if($geslo !== $pwdHashed){
        $logtxt ="Neuspesna prijava";
        WritteLog($username,$logtxt);
        header("location: login.php?error=passwordsdontmatch");
        exit();
    }
    else if($geslo === $pwdHashed){
        WritteLog($username,$logtxt);
        session_start();

        date_default_timezone_set('Europe/Ljubljana');
        $_SESSION["startTime"] = time();
        $_SESSION["ar"] = $uidExist["ar"];
        $_SESSION["ime"] = $uidExist["ime"];
        $_SESSION["role"] = $uidExist["role"];
        header("location: home1.php?$time");
        exit(); 
    }
}





function ManageUser($conn,$Ar,$mail,$ime,$pwd,$row){

    $sql = "UPDATE uporabniki SET ar = ?,mail= ?,ime= ?,geslo= ?,role= ? WHERE ar= ?;";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
        header("location: UrediUporabnika.php?error=stmtfail1");
        exit();
    }
    $salted = "burger".$pwd."everest";
    $hashed = hash('sha512', $salted);
    $geslo = $hashed;
    mysqli_stmt_bind_param($stmt,"ssssss",$Ar,$mail,$ime,$geslo,$row,$Ar);
    $resultData = mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);
    header("location: UrediUporabnika.php?");
    exit();
}
 


function ManageUserNoPWd($conn,$Ar,$mail,$ime,$row){
    $sql = "UPDATE uporabniki SET ar = ?,mail= ?,ime= ?,role= ? WHERE ar= ?;";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
        header("location: UrediUporabnika.php?error=stmtfail1");
        exit();
    }

    mysqli_stmt_bind_param($stmt,"sssss",$Ar,$mail,$ime,$row,$Ar);
    $resultData = mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);
    header("location: UserLogs.php");
    exit();
}
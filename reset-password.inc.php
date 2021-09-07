<?php


if(isset($_POST["button-password-submit"])){

    $selector = $_POST["selector"];
    $validator = $_POST["validator"];
    $password = $_POST["pwd"];
    $pwdRepeat = $_POST["pwd-repeat"];

     
    if(empty($password) || empty($pwdRepeat)){
        header("Location: password1.php?selector=".$selector."&validator=".$validator."&error=Manjka");
        exit();
    }else if($password != $pwdRepeat){
        header("Location: password1.php?selector=".$selector."&validator=".$validator."&error=Neanaka");
        exit();
    }

    $currentDate = date("U");

    require 'dbh.inc.php';
    
    $sql = "SELECT * FROM pwdReset WHERE pwdResetSelector = ? AND pwdResetExpires >= ?;";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
        echo "There was an error!";
        exit();
    }else{
        mysqli_stmt_bind_param($stmt,"sd",$selector,$currentDate);
        mysqli_stmt_execute($stmt);
        

        $result = mysqli_stmt_get_result($stmt);
        if(!$row = mysqli_fetch_assoc($result)){
            echo "You need to re-submit your reset request2.";
            exit(); 
        }else{
            
            $tokenBin = hex2bin($validator);  
            $tokenCheck;
        
                $tokenCheck = password_verify($tokenBin,$row["pwdResetToken"]);
                if($tokenCheck === false){
                    echo "You need to re-submit your request-1";
                    exit();
                }else if($tokenCheck === true){
                    $tokenEmail = $row['pwdResetEmail'];
                    $sql = "SELECT * FROM uporabniki WHERE mail=?;";
                    $stmt = mysqli_stmt_init($conn);
                if(!mysqli_stmt_prepare($stmt,$sql)){
                        echo "There was an error!";
                        exit();
                }else{
                        mysqli_stmt_bind_param($stmt,"s",$tokenEmail);
                        mysqli_stmt_execute($stmt);
                        $result = mysqli_stmt_get_result($stmt);
                        if(!$row = mysqli_fetch_assoc($result)){
                            echo "There was an error!";
                            exit();
                        }else{
                            $sql = "UPDATE uporabniki SET geslo = ? WHERE mail = ?;";
                            $stmt = mysqli_stmt_init($conn);
                            if(!mysqli_stmt_prepare($stmt,$sql)){
                                    echo "There was an error!";
                                    exit();
                            }else {
                                $salted = "burger".$password."everest";
                                $hashed = hash('sha512', $salted);
                                $geslo11 = $hashed;
                                mysqli_stmt_bind_param($stmt,"ss",$geslo11,$tokenEmail);
                                mysqli_stmt_execute($stmt);
                                header("Location: logout.inc.php?newpwd=passwordupdated");
                            }
                        }   

                }
            }

        }
    }

}else{

    header("Location: Spremenjeno.php");
}



















































































































































































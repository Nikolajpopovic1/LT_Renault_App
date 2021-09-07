<?php
 
if(isset($_POST["reset-request-submit"])){
    $selector = bin2hex(random_bytes(8)); 
    $token = random_bytes(32);
    $url = "http://everest/LTAplikacija1/password1.php?selector=" . $selector . "&validator=" . bin2hex($token);
    $expires = date("U")+1800;

    require "dbh.inc.php";

    $userEmail = $_POST["Mail"];

    $sql = "DELETE FROM pwdReset WHERE pwdResetEmail=?;";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
        echo "There was an error!";
        echo mysqli_stmt_error($stmt);
        echo mysqli_error();
        exit();
    }else{
        mysqli_stmt_bind_param($stmt,"s",$userEmail);
        mysqli_stmt_execute($stmt);        
    }
    
    $sql = "INSERT INTO pwdReset (pwdResetEmail, pwdResetSelector, pwdResetToken, pwdResetExpires) VALUES ( ?, ?, ?, ? );";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
        echo "there was an error";
        exit();
    }else{  
        
    $geslo1 = $token;
    $salted = "burger".$geslo1."everest";
    $hashed = hash('sha512', $salted);
    $geslo = $hashed;
    $hashedToken = password_hash($token,PASSWORD_DEFAULT);
    mysqli_stmt_bind_param($stmt,"ssss",$userEmail,$selector,$hashedToken,$expires);
    mysqli_stmt_execute($stmt);        

    }
    mysqli_stmt_close($stmt);   



    $to = $userEmail;
    $subjecto = 'Reset your password!';
    $message = 'We received password request. The link to reset your passwordis bellow, if you didnt make this request ignore the message';
    $message .='Here is your pass reset link!';
    $message .= " ".$url ."";
    
    $to_email = 'blaz.burger@renault.com';
    $subject = 'SPrememba gesla LTApp';
    //$message = 'This mail is sent using the PHP mail function';
    $headers = 'From: everest@renault.com';
    mail($to,$subjecto,$message,$headers);
    
	header('Location: ChackYourMailInbox.php');
        

}else{
    header("Location: Spremenjeno.php");

}
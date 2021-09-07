<?php
$mail = new PHPMailer;
    require 'passw.inc.php';
    // SMTP configuration
    $mail->isSMTP();
    $mail->Host     = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'NikiMiska1234567@gmail.com';
    $mail->Password = $passs;
    $mail->SMTPSecure = 'tls';
    $mail->Port = 587;
    $mail->setFrom('NikiMiska1234567@gmail.com', 'Reset'); 
    $mail->addReplyTo('NikiMiska1234567@gmail.com', 'Reset'); 
    $mail->addAddress($userEmail); 
    $mail->Subject = $subjecto;
    $mail->isHTML(true); 
    $mailContent = $message;
    $mail->Body = $mailContent;
    // Send email 
    if(!$mail->send()){ 
        echo 'Message could not be sent. Mailer Error: '.$mail->ErrorInfo; 
    }else{ 
        echo 'Message has been sent.'; 
    } 

<?php
session_start();
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="width=device-width, initital-scale:1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="SpremeniGeslo.css" />
</head>
<body>
    <div class="nav">
      <div class="just">
      <h4 class="skrij">Glavni meni</h4>
      <label class="labe" for="toggle">&#9776;</label>
      </div>
      <input type="checkbox" id="toggle"/>
      <?php
            if(!empty($_SESSION["role"])){
              date_default_timezone_set('Europe/Ljubljana');
    
              if(time() - $_SESSION["startTime"] > 900){
                  session_unset();
                  session_destroy();
                  header("Location: logout.php");
              }else{
                  $_SESSION["startTime"] = time();
              }
          
                if(!strcmp($_SESSION["role"],"Admin")){
                        include "headerAdmin.php";
                }else{
                        include "headerUser.php";
                }                        
              }else{
                include "headerUser.php";
                
              }                    
        ?>
      <div class="ivo">
        <section class="secia">
            <h1>Spremeni geslo</h1>
            <div class="ui">
            <form class="ff" action="reset-request.inc.php" method="post"> 
                <input type="text" name="Mail" placeholder="Mail" />
                <input type="submit" name="reset-request-submit" value="Spremeni" placeholder="submit-btn" /> 
            </form>
        </div>
        </section>          
    </div>
  </div>
  </body>
</html>
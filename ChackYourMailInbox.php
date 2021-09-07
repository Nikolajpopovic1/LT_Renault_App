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
               if(!strcmp($_SESSION["role"],"Admin")){
                                include "headerAdmin.php";
                }else{
                                include "headerUser.php";
                }
                   session_unset();
                   session_destroy();                                 
          }
      ?>
      <div class="ivo">
        <section class="secia">
            <h1>Spremeni geslo</h1>
            <div class="ui">
            <p>Poslano vam je bilo obnovitveno sporočilno na vaš email!</p>
            </div>
        </section>          
    </div>
  </div>
  </body>
</html>
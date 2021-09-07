<!DOCTYPE html>
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
      <div class="ivo">
        <section class="secia">
            <h1>Registriraj se!</h1>
            <div class="ui">
            <form class="ff" action="signup.inc.php" method="post">
                <input type="text" name="Ar" placeholder="Ar" /> 
                <input type="text" name="Mail" placeholder="Mail" />
                <input type="text" name="Ime" placeholder="Ime" />
                <input type="password" name="password" placeholder="Password" />
                <input type="submit" name="submit" value="Spremeni" placeholder="submit-btn" /> 
            </form>
        </div>
        <?php
        if(isset($_GET["error"])){
          if(!strcmp($_GET["error"],"Manjka")){
            echo "<p style='color:grey'>Izpolniti je potrebno vsa polja!</p>";
          }else if(!strcmp($_GET["error"],"WrMail")){
            echo "<p style='color:grey'>Napacna oblika maila!</p>";    
          }else if(!strcmp($_GET["error"],"Obstaja")){
            echo "<p style='color:grey'>Uporabnik obstaja!</p>";
          }else if(!strcmp($_GET["error"],"Nemorem")){
            echo "<p style='color:grey'>Napaka pri kreiranju!</p>";
          }else{
            echo "";
          }
        }
        ?>
        </section>          
    </div>
  </div>
  </body>
</html>


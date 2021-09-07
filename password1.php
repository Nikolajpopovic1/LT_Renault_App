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
            <h1>Spremeni geslo!</h1>
            <div class="ui">
            <?php
            $selector = $_GET["selector"];
            $validator = $_GET["validator"];
            if(empty($selector) || empty($validator)){
                echo "Could not validate your request";
            }else{
                if(ctype_xdigit($selector) !== false && ctype_xdigit($validator) !== false){
                    ?>
                    <form class="ff" action="reset-password.inc.php" method="post">

                        <input type="hidden" name="selector" value="<?php echo $selector ?>">
                        <input type="hidden" name="validator" value="<?php echo $validator ?>">  
                        <input type="password" name="pwd" placeholder="Enter new pass">
                        <input type="password" name="pwd-repeat" placeholder="Repeat new pass">
                        <input type="submit" value="spremeni" name="button-password-submit" placeholder="Spremeni">
                    </form>
                    <?php
                }
            }
        ?>
        </div>
        <?php
        if(isset($_GET["error"])){
          if(!strcmp($_GET["error"],"Manjka")){
            echo "<p style='color:grey'>Izpolniti je potrebno vsa polja!</p>";
          }else if(!strcmp($_GET["error"],"Neanaka")){
            echo "<p style='color:grey'>Gesli se ne ujemata!</p>";    
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


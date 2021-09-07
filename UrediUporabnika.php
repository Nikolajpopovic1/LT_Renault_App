<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="width=device-width, initital-scale:1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="SpremeniGeslo.css" />
    <link rel="stylesheet" href="ddown1.css" />
    
    <link rel="stylesheet" href="uredi.css" />
</head>
<script src="IncludScript.js"></script>
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
            <h1>Uredi uporabnika!</h1>
            <div class="ui">
                <form class="ff" action="Uredi.inc.php" method="post">
                <div class = "sortir">
                <?php
                
                
                if(!empty($_SESSION["role"])){  
                  if(!strcmp($_SESSION["role"],"Admin")){
                    $userr = $_GET["arr"];
                    require 'dbh.inc.php';
                    echo $userr;
                    $sql = "SELECT * FROM uporabniki where Ar='$userr';";  
                    
                    $stmt = mysqli_stmt_init($conn);
                                        
                    if(!mysqli_stmt_prepare($stmt,$sql)){
                      echo "<h4>Napaka! Najbrz ni vnosa v bazi, za podani LT!<h4>";
                      exit();
                  }else{
                    mysqli_stmt_execute($stmt);
                      
                    
                    $result = mysqli_stmt_get_result($stmt);
                    $row = mysqli_fetch_assoc($result);
                    $name = $row["ar"];
                    $majl = $row["mail"];
                    $ime = $row["ime"];
                  
                    $pwd = $row["geslo"];
                    $role = $row["role"];
                  
                    echo "<input type='text' value='".$name."'  name='Ar' placeholder='".$name."' /> ";
                    echo "<input type='text' value='".$majl."' name='Mail' placeholder='".$majl."' />";
                    echo "<input type='text' value='".$ime."' name='Ime' placeholder='".$ime."' />";
                    echo "<input type='password' value='' name='password' placeholder='Password(ni zahtevano)' />";
            
                    echo "<div class='pio'>";

                   echo "<details class='custom-select'>";
                   echo "<summary class='radios'>";
                    
                   echo "<input class='vNOS' type='radio' name='Role' onchange='handleChange1();' value='".$role."' id='".$role."' title='".$role."' checked><a id='num1'>".$role."</a>";
                                     echo "<input class='vNOS' onchange='handleChange1();' type='radio' name='Role' id='Admin' value='Admin' title='Admin'><a id='num2'></a>";
                                     echo "<input class='vNOS' onchange='handleChange1();' type='radio' name='Role' id='user' value='user' title='user'><a id='num3'></a>";
                                     echo "</summary>";
                                     echo "<ul class='list'>
                                                  <li>
                                                       <label for='Admin'>Admin</label>
                                                  </li>
                                                  <li>
                                                       <label for='user'>user</label>
                                                  </li>
                                    </ul>
                    </details>
                    </div>
                    <input type='submit' name='submit' value='Spremeni' placeholder='submit-btn' />";
                  } 
                }
              }
                    ?>

                    <div>
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




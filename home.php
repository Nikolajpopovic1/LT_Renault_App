<?php
    session_start();


?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="width=device-width, initital-scale:1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="obrazec1.css" />

        <link rel="stylesheet" href="colspan4.css" />
    <link rel="stylesheet" href="bstyle.css" />
</head>
<body>
    <div class="nav1">
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
    <div class="where">
    <?php

    
                    if(!empty(isset($_SESSION["role"]))){ 
                        date_default_timezone_set('Europe/Ljubljana');    
                        if(time() - $_SESSION["startTime"] > 900){
                            session_unset();
                            session_destroy();
                            header("Location: logout.php");
                        }else{
                            $_SESSION["startTime"] = time();
                        }
                    
                        require 'dbh.inc.php';
                        $ident = $_GET["id"];
                        $sql = "SELECT * FROM novica1 where id=$ident;";  
                        
                        $stmt = mysqli_stmt_init($conn);
                        
                        if(!mysqli_stmt_prepare($stmt,$sql)){
                            echo "<h4>Napaka! Najbrz ni vnosa v bazi, za podani LT!<h4>";
                            exit();
                        }else{
                            mysqli_stmt_execute($stmt);
                            
                        $result = mysqli_stmt_get_result($stmt);
                        }    
                        $row = mysqli_fetch_assoc($result);

                        echo "<h4>",$row["naslov"],"</h4>";
                    }
    ?>
</div>
  
            <div style="overflow-x:auto; display:flex; align-items:center; justify-content:center;" class='prilagod'>
            
  <table style="width:60%;">
  <?php
                if(!empty(isset($_SESSION["role"]))){ 
                    date_default_timezone_set('Europe/Ljubljana');    
                    if(time() - $_SESSION["startTime"] > 900){
                        session_unset();
                        session_destroy();
                        header("Location: logout.php");
                    }else{
                        $_SESSION["startTime"] = time();
                    }
                
                    
                    $ident = 1;
                    require 'dbh.inc.php';
                    $ident = $_GET["id"];
                    $sql = "SELECT * FROM novica1 where id=$ident;";  
                    
                    $stmt = mysqli_stmt_init($conn);
                    
                    if(!mysqli_stmt_prepare($stmt,$sql)){
                        echo "<h4>Napaka! Najbrz ni vnosa v bazi, za podani LT!<h4>";
                        exit();
                    }else{
                        mysqli_stmt_execute($stmt);
                        
                    $result = mysqli_stmt_get_result($stmt);
               
                    $result1 = $result;
                        if(mysqli_num_rows($result) < 1){
                            echo "<h4 style='text-align:center'>Ni vrstic za prikaz!</h4>";
                        }else {
                            echo "<tr><th>LT</th><th>Naslov</th><th>Uporabnik</th><th>Datum</th></tr>";                        }
                            while($row = mysqli_fetch_assoc($result)){
                                echo "<tr><td>",$row["LT"],"</td><td>",$row["naslov"],"</td><td>",$row["avtor"],"</td><td>",$row["datum"],"</td></tr>";
                                echo "<tr ><td colspan=4 align=center>",$row["besedilo"],"</td>","</tr>";
                                if(empty($row['slika'])){
                                    echo "<tr ><td colspan=4 align=center>","Ni slike!","</td>","</tr>";
                                }else{
                                      echo "<tr ><td colspan=4 align=center>",'<img src="data:image/jpg;base64,'.base64_encode($row["slika"]).'"/>',"</td>","</tr>";
                                }
                            }
                    }  
                }     
       ?>       
  </table>
</div>


                








        </form>



    </div>
</body>











































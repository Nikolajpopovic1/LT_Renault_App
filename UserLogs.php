<?php
    session_start();
?>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="width=device-width, initital-scale:1.0" />
        <title>Login</title>
        <link rel="stylesheet" href="seznamLT.css" />
        <link rel="stylesheet" href="ddown.css" />
        <link rel="stylesheet" href="bstyle.css" />
    </head>
<body>
    
<form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post">
    <div> 
        <div class="skos">
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
                                    </div>
                                    
                                    <br></br>
                        <div>
                                    <div class="svojDiv">                                                    
            <div>   
        </div>
        <div class="where">
             
             <h4>Seznam uporabnikov!</h4>
          </div>
         
    
    </div>
    </form>
    <br></br>
    <section class="center-me">
        <div class="ord">          
        <?php
   
if(!empty($_SESSION["role"])){ 
    if(!strcmp($_SESSION["role"],"Admin")){ 
    date_default_timezone_set('Europe/Ljubljana');
    
    if(time() - $_SESSION["startTime"] > 900){
        session_unset();
        session_destroy();
        header("Location: logout.php");
    }else{
        $_SESSION["startTime"] = time();
    }

                    require 'dbh.inc.php';
                    $sql = "SELECT * FROM uporabniki;";  
                    
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
                            echo "<table>";
                            echo "<tr><th>Ar</th><th>Mail</th><th>Ime</th><th>Role</th><th>Nadzorne funkcije</th></tr>";                        }
                            while($row = mysqli_fetch_assoc($result)){
                     
                                echo "<tr><td>",$row["ar"],"</td><td>",$row["mail"],"</td><td>",$row["ime"],"</td><td>",$row["role"],"</td><td>","<a href='UrediUporabnika.php?arr=".$row["ar"]."'>Edit</a>","/","<a href='Brisi.php?id=",$row["ar"],"'>Delete</a>","</td></tr>";
                            }
                            echo "</table>";
                        
                    }
                   



                }
            }
        
       ?>    
                            
    </div>           

    </section>

</body>

</html>



































































































































































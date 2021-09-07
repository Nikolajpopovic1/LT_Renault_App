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
    
<script src="IncludScript.js"></script>
<body onload="Skrij()">
<form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post">
<input type="hidden"  name="item1" id="Vse12" value="Vse" title="Vse">
<input type="hidden"  name="item" id="Vse14" value="Vse" title="Vse">
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
                                                        <div class="postrihani">
                                                                    <label class="col">Vnesi LT:</label>
                                                                    <div class="scale1">       
                                                                        <section class="secia">
                                                                                <input type="number" name="Stlt" placeholder="0" /> 
                                                                         </section>
                                                                    </div>
                                                        </div>
                                            

                                                    <div class="ioi">   
                                                                <details class="custom-select">
                                                                <summary class="radios">
    
                                                                <a name="item13" value="Vse" id="spr">Izberi prostor</a>

                                                                </summary>
                                                                <ul class="list">
                                                                    <li>
                                                                    <a onclick="Omara();"><label id="Omara1" for="Omara1">Omara</a></label>
                                                                    </li>
                                                                    <li>
                                                                    <a onclick="Soba();"><label id="Soba1" for="Soba1">Soba</a></label>
                                                                    </li>
                                                                    <li>
                                                                    <a onclick="Vse();"><label for="Vse1">Vse</a></label>
                                                                    </li>
                                                                </ul>
                                                            </details>
                                                            <details class="custom-select">
                                                                <summary class="radios">
                                                                <a name="item14" value="Vse" id="spr1">Izberi hlajenje</a>

                                                                </summary>
                                                                <ul class="list">
                                                                    <li>
                                                                    <a onclick="Klima();"><label for="Omara">Klima</a></label>
                                                                    </li>
                                                                    <li>
                                                                    <a onclick="Ventilator();"><label for="Soba">Ventilator</a></label>
                                                                    </li>
                                                                    <li>
                                                                    <a onclick="Vse1();"><label for="Vse">Vse</a></label>
                                                                    </li>
                                                                </ul>
                                                            </details>
                                                    </div>
                                                

                                            

                                                <section class="sekkcia">
                                                        <input type="submit" name="loginBtn" value="Prikazi!" placeholder="submit-btn" /> 
                                                
                                                </section>



                                                    

            <div>   
                     
        </div>
    
    </div>
    </form>
    <br></br>
    <br></br>
    <br></br>
    <section class="center-me">
        <div class="ord">          
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

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
                    require 'dbh.inc.php';
                    // collect value of input field
                    if(!strcmp($_POST["item"],"Vse")){
                            $hlajenje = 1;
                    }else {
                            $hlajenje ="Hlajenje='".$_POST["item"]."'";    
                    }


                    
                    if(!strcmp($_POST["item1"],"Vse")){
                        $prostor = 1;
                    }else {
                        $prostor ="Prostor='".$_POST["item1"]."'";    
                    }
                         
                    
                    
                    if($_POST["Stlt"] < 1){
                        $LT = 1;
                    }else {
                        $LT = "LT='".$_POST["Stlt"]."'";    
                        
                    }



                    $sql = "SELECT * FROM info where ".$LT."  AND ".$prostor." AND ".$hlajenje.";";  
                    
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
                            echo "<tr><th>LT</th><th>Prostor</th><th>Hlajenje</th></tr>";                        }
                            while($row = mysqli_fetch_assoc($result)){
                                echo "<tr><td>",$row["LT"],"</td><td>",$row["prostor"],"</td><td>",$row["hlajenje"],"</td></tr>";
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



































































































































































<?php
session_start();
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="width=device-width, initital-scale:1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="obrazec1.css" />
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
                        <h4>Pregled preventiv!</h4>
                    </div>
            <div style="overflow-x:auto;">
                    <table>
                                    <?php
                                    require 'dbh.inc.php';
                                    require 'querycherry.inc.php';

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

                                    $sql = $querrr;
                                    $stmt = mysqli_stmt_init($conn);
                                    if(!mysqli_stmt_prepare($stmt,$sql)){
                                        echo "<h4>Napaka! Najbrz ni vnosa v bazi, za podani LT!<h4>";
                                        exit();
                                    }else{
                                        mysqli_stmt_execute($stmt);


                                    $result = mysqli_stmt_get_result($stmt);
                                    $result1 = $result;


                                        if(mysqli_num_rows($result) < 1){
                                            echo "<h4>Ni vrstic za prikaz!</h4>";
                                        }else {
                                            echo "<tr><th>id</th><th>LT</th><th>datum</th><th>dostop</th><th>tla</th><th>urejenost</th><th>patch_kabli</th><th>optika</th><th>prasnost</th><th>ups</th><th>voda</th><th>temperatura</th><th>klima</th><th>el_kabli</th><th>vrata</th><th>pozar</th><th>kljuc</th><th>Gasilni_aparat</th><th>Gorljivost</th><th>Opombe</th><th>Ar</th></tr>";
                                        }
                                            while($row = mysqli_fetch_assoc($result)){
                                                echo "<tr><td>",$row["id"],"</td><td>",$row["LT"],"</td><td>",$row["datum"],"</td><td>",$row["dostop"],"</td><td>",$row["tla"],"</td><td>",$row["urejenost"],"</td><td>",$row["patch_kabli"],"</td><td>",$row["optika"],"</td><td>",$row["prasnost"],"</td><td>",$row["ups"],"</td><td>",$row["voda"],"</td><td>",$row["temperatura"],"</td><td>",$row["klima"],"</td><td>",$row["el_kabli"],"</td><td>",$row["vrata"],"</td><td>",$row["pozar"],"</td><td>",$row["kljuc"],"</td><td>",$row["gas_aparat"],"</td><td>",$row["gorlivost"],"</td><td>",$row["opombe"],"</td><td>",$row["ar"],"</td></tr>";  
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








































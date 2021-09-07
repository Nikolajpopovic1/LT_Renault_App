

<?php
    session_start();
?>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="width=device-width, initital-scale:1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="Novica.css" />
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
    <div class="postrihani">
        <h4>Dodaj novico    </h4>
    </div>

    <form action="Dodaj-Novico.inc.php" method="post" enctype="multipart/form-data">

    <div class="postrihani">
        <label class="col">Vnesi številko LT:</label>
        <div class="scale1">       
            <section class="secia">
                    <input type="number" value="0"  name="number" placeholder="0" /> 
            </section>
        </div>
    </div>

    <div class="postrihani">
        <label class="col">Vnesi naslov</label>
        <div class="scale1">
            <section class="secia">
                <h4></h4>
                    <input type="text" value="" name="naslov" placeholder="Naslov" /> 
        
            </section>
        </div>
    </div>

  
    <div class="nav">
        <div class="postrihani">    
        <label class="col">Besedilo:</label>
            <div class="tra">
                <div class="form__group">
                    <label for="message" class="form__label">opombe</label>
                    <textarea id="message" value="" name="opomboslava" class="form__field" placeholder="Vnesi novico..." rows="6"></textarea>
                </div>
            </div>
        </div>
        
      

        
            <div class="nav">    
                <label class="col">Izberite sliko( ni obvezno ):</label>
                <div class="postrihani">
                    <div class="upload-btn-wrapper">
                        <button class="btn">Upload a file</button>
                        <input type="file" class="btn" name="image" />
                    </div>
                </div>            
                <div class="postrihani">
                    <label class="col">Shrani novico:</label>
                    <div class="scale1">       
                        <section class="secia">
                                <input type="submit" name="loginBtnn" value="Shrani" placeholder="submit-btn" /> 
                            
                        </section>
                    </div>
                </div>
            </div>
</form>
        
    </div>
    </div>
</body>
</html>











































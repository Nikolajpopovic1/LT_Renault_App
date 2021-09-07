
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="width=device-width, initital-scale:1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="login.css" />
</head>

<body>

    <section class="secia">
        <h1>Login</h1>
        <form action="login.inc.php" method="post">
            <input type="text" name="name" placeholder="Ar" /> 
            <input type="password" name="pwd" placeholder="Password" />
            <input type="submit" name="submit" value="login" placeholder="submit-btn" /> 
        </form>
        <div>
            <a href="Registracija.php" style="color:grey" class="pob">Registriraj se!</a>
            <a href="lostpwd.php" style="color:grey" class="pob">Izgubljeno geslo!</a>
        </div>
        <?php
    if(isset($_GET["error"])){
        if($_GET["error"] == "emptyinput"){
            echo "<p style='color:grey'>Izpolniti je potrebno vsa polja!</p>";
        }else if($_GET["error"] == "invaliduid"){
            echo "<p style='color:grey'>Choose a proper username!</p>";
        }else if($_GET["error"] == "invalidemail"){
            echo "<p style='color:grey'>Choose a proper email!</p>";
        }else if($_GET["error"] == "passwordsdontmatch"){
            echo "<p style='color:grey'>Napacno uporabniško ime ali geslo!</p>";
        }else if($_GET["error"] == "stmtfailed"){
            echo "<p style='color:grey'>Something went wrong, try again!</p>";
        }else if($_GET["error"] == "usernametaken"){
            echo "<p style='color:grey'>Username already taken!</p>";
        }else if($_GET["error"] == "usernametaken"){
            echo "<p style='color:grey'>You have signed up!</p>";
        }
    }

?>

    </section>

</body>

</html>
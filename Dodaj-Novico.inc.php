<?php 
    session_start();
// Include the database configuration file  

require_once 'dbh.inc.php'; 
 $db = $conn;
// If file upload form is submitted 
$status = $statusMsg = ''; 
if(isset($_SESSION["role"])){ 
    date_default_timezone_set('Europe/Ljubljana');
    
    if(time() - $_SESSION["startTime"] > 900){
        session_unset();
        session_destroy();
        header("Location: logout.php");
    }else{
        $_SESSION["startTime"] = time();
    }

    if(isset($_POST["loginBtnn"])){ 
        
        $number = $_POST['number'];
        $naslov = $_POST['naslov'];
        $opomba = $_POST['opomboslava'];
        $upor = $_SESSION["ar"];
        $status = 'error'; 
            // Get file info 
            $fileType = "";
            if(!empty($_FILES["image"]["name"])){
                $fileName = basename($_FILES["image"]["name"]); 
                $fileType = pathinfo($fileName, PATHINFO_EXTENSION); 
            }
            
            // Allow certain file formats 
            $allowTypes = array('jpg','png','jpeg','gif'); 
            if(in_array($fileType, $allowTypes)){ 
                $image = $_FILES['image']['tmp_name']; 
                $imgContent = addslashes(file_get_contents($image)); 
                $insert = $conn->query("INSERT into novica1 (avtor,besedilo,datum,LT,naslov,slika) VALUES ('$upor','$opomba',now(),$number,'$naslov','$imgContent' );");
            }else{
                $insert = $conn->query("INSERT into novica1 (avtor,besedilo,datum,LT,naslov) VALUES ('$upor','$opomba',now(),$number,'$naslov');");
                
            }
                // Insert image content into database 

                if($insert){ 
                    
                    $status = 'success'; 
                    $statusMsg = "File uploaded successfully."; 
                    header("Location: Novica.php?Success");
                    
                }else{ 
                    $statusMsg = "File upload failed, please try again."; 
                    
                    header("Location: Novica.php?Fail");
                }  
          
    
    } 
}
// Display status message 
echo $statusMsg; 
?>
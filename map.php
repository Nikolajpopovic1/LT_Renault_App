<?php
include ("configDB.php");
session_start();
date_default_timezone_set('Europe/Ljubljana');

if(isset($_SESSION["ar"])) //ar ne sme biti nič
{
 	if((time() - $_SESSION['last_time']) > 360000) // ce je seja več kot 1h logout ne dela
 	{
		header("location:logout.php");
 	}

	 else
	 {


	
			if($_SESSION["role"] == "admin") {

					
				include('includes/map/file/stvar1.php');	
			}
			
			elseif($_SESSION["role"] == "power_user") {

				

				include('includes/map/file/stvar2.php');	
				
				
			}
			elseif($_SESSION["role"] == "user") {


				include('includes/map/file/stvar3.php');				
}

			else
			{
			 header('Location:index.php');
			}
				


	

	 }
	}
else
{
 header('Location:index.php');
}
?>


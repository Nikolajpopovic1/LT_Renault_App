<?php
session_start();

if(isset($_SESSION["role"])){
        date_default_timezone_set('Europe/Ljubljana');
    
        if(time() - $_SESSION["startTime"] > 900){
            session_unset();
            session_destroy();
            header("Location: logout.php");
        }else{
            $_SESSION["startTime"] = time();
        }
    
        require "dbh.inc.php";
        $ltpr = $_GET["id"];
        $lt = "lt".$ltpr;
        $sql = "SELECT * FROM ".$lt." ORDER BY datum DESC";
        $query = $conn->query($sql);
        if($query->num_rows > 0){
                $delimiter = ",";
                $filename = "".$lt."" . date('Y-m-d') . ".csv";
                
                //create a file pointer
                 $f = fopen('php://memory', 'w');
                
                //set column headers
                $fields = array('id','LT','datum','dostop','tla','urejenost','patch_kabli','optika','prasnost','ups','voda','temperatura','klima','el_kabli','vrata','pozar','kljuc','Gasilni_aparat','Gorljivost','Opombe','Ar');
              
                fputcsv($f, $fields, $delimiter);
                
               //output each row of the data, format line as csv and write to file pointer
                while($row = $query->fetch_assoc()){
                        $lineData = array($row["id"],$row["LT"],$row["datum"],$row["dostop"],$row["tla"],$row["urejenost"],$row["patch_kabli"],$row["optika"],$row["prasnost"],$row["ups"],$row["voda"],$row["temperatura"],$row["klima"],$row["el_kabli"],$row["vrata"],$row["pozar"],$row["kljuc"],$row["gas_aparat"],$row["gorlivost"],$row["opombe"],$row["ar"]);
                        fputcsv($f, $lineData, $delimiter);
               }
        }
        
        //move back to beginning of file
        fseek($f, 0);    
        
        //set headers to download file rather than displayed
        header('Content-Type: text/csv');
        header('Content-Disposition: attachment; filename="' . $filename . '";');
                
        //output all remaining data on a file pointer
        fpassthru($f);
        
}
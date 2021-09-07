<?php 

require "dbh.inc.php";

if(isset($_POST['sendSubmit'])){
    require "posti.php";
    if (empty($dateme) || empty($Urejenost_lt) || empty($Urejenost_tal) || empty($Splosna_urejenost) || empty($Urejenost_patch_kablov) || empty($Urejenost_optike) || empty($Stanje_prasnosti_opreme) || empty($Priklop_na_UPS) || empty($Prisotnost_vode) || empty($vnesi_temperaturo_prostora) || empty($Zadnja_zabelezena_Kontrola_klime) || empty($Oznake_elektricnih_kablov) || empty($Kontrola_odprtosti_vrat) || empty($Javljalec_pozara) || empty($Univerzalni_kljuc) || empty($Gasilni_aparat) || empty($Gorljivost) || empty($vnesi_svoj_ar)) {
        header("Location: obrazec1.php?id=$LTNUM&error=ppraz");
        exit();
    }
    if(empty($Opombe)){
        $Opombe = "Brez";
    }

    $sql = "INSERT INTO lt$LTNUM (LT, datum, dostop, tla,urejenost,patch_kabli,optika,prasnost,ups,voda,temperatura,klima,el_kabli,vrata,pozar,kljuc,gas_aparat,gorlivost,opombe,ar) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
        echo $sql;
        echo mysqli_stmt_error($stmt);
        echo mysqli_error();
        echo "there was an error1";
        exit();
    }else{
        $lt = $LTNUM;
        mysqli_stmt_bind_param($stmt,"ssssssssssssssssssss",$lt,$dateme,$Urejenost_lt,$Urejenost_tal, $Splosna_urejenost,$Urejenost_patch_kablov,$Urejenost_optike,$Stanje_prasnosti_opreme,$Priklop_na_UPS,$Prisotnost_vode,$vnesi_temperaturo_prostora,$Zadnja_zabelezena_Kontrola_klime,$Oznake_elektricnih_kablov,$Kontrola_odprtosti_vrat,$Javljalec_pozara,$Univerzalni_kljuc,$Gasilni_aparat,$Gorljivost,$Opombe,$vnesi_svoj_ar);
        mysqli_stmt_execute($stmt);        

    }
    mysqli_stmt_close($stmt);   
    header("Location: obrazec1.php?id=$LTNUM","as");
}



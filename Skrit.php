
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="width=device-width, initital-scale:1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="obrazec1.css" />
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
    
                        
                            if(!strcmp($_SESSION["role"],"Admin")){
                                include "headerAdmin.php";
                            }else{
                                include "headerUser.php";
                            }                         
                        }else{
                                include "headerUser.php";
                        }               
            ?>
            
           
                <form action='save-from-db.php' method='POST'>
                <?php
                
                    $ident = $_GET["id"];
                    echo "<input type='hidden' value=$ident id='LTJC' class='hidde' name='LTJC' />";
                
                ?>
                <div class="postrihani">
                    <?php
                    
                        $ident = $_GET["id"];
                        echo "<h4>Ocenjevalni list lt$ident</h4>";
                
                    ?>
                    
                    <?php
                        if(isset($_GET["error"])){
                            if(!strcmp($_GET["error"],"ppraz")){
                               echo "<h4>Pustili ste prazno vnosno polje!</h4>";
                            }    
                        }

                    ?>
                    <label class="lleb col" for="dateofbirth">Vnesi datum:</label>
                    <input  class="vvv" type="date" name="dateme" id="dateofbirth">
                </div>

                <div class="nav">    
                        <div>               
                            <div class="postrihani">                                              
                            <label class="col">Urejenost LT - ja</label>      
                            <div class="postavi">
                                <div class="radio-container">
                                        <div class="gumbki">
                                            <input type="radio" value="Ok" id="Ok" name="Urejenost_lt" />
                                            <label class="lal" for="Ok">Ok</label>
                                        </div>
                                        <div class="gumbki">
                                            <input type="radio" value="Otezen" id="Otezen" name="Urejenost_lt" />
                                            <label class="lal" for="Otezen">Otezen</label>
                                        </div>
                                </div>
                            </div>
                            </div>   
                        </div>
         



                <div class="nav">                                 
                    <div class="postrihani">      
                        <label class="col">Urejenost tal:</label>      
                        <div class="postavi">
                            <div class="radio-container">
                                <div class="gumbki">
                                    <input type="radio" value="Urejen" id="Urejen" name="Urejenost_tal" />
                                    <label class="lal" for="Urejen">Urejen</label>
                                </div>
                                <div class="gumbki">
                                    <input type="radio" value="Delno urejeno" id="Delno urejeno" name="Urejenost_tal" />
                                    <label class="lal" for="Delno urejeno">Delno Urejen</label>
                                </div>
                                <div class="gumbki">    
                                    <input type="radio" value="neurejeno" id="neurejeno" name="Urejenost_tal" />
                                    <label class="lal" for="neurejeno">neurejeno</label>
                                </div>
                            
                        </div>
                    </div>
                </div>
                
                <div class="nav">                       
                    <div class="postrihani">                  
                    <label class="col">Splosna urejenost:</label>      
                    <div class="postavi">
                    <div class="radio-container">
                            <div class="gumbki">
                                <input type="radio" value="urejeno" id="urejeno1" name="Splosna_urejenost" />
                                <label class="lal" for="urejeno1">urejeno</label>
                            </div>
                            <div class="gumbki">
                                <input type="radio" value="Delno urejeno" id="Delno urejeno1" name="Splosna_urejenost" />
                                <label class="lal" for="Delno urejeno1">Delno urejeno</label>
                            </div>
                            <div class="gumbki">    
                                <input type="radio" value="neurejeno" id="neurejeno1" name="Splosna_urejenost" />
                                <label class="lal" for="neurejeno1">neurejeno</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="nav">       
                    <div class="postrihani">                                      
                    <label class="col">Urejenost patch kablov:</label>      
                    <div class="postavi">
                    <div class="radio-container">
                        <div class="gumbki">
                            <input type="radio" value="urejeno" id="urejeno2" name="Urejenost_patch_kablov" />
                            <label class="lal" for="urejeno2">urejeno</label>
                        </div>
                        <div class="gumbki">
                            <input type="radio" value="Delno urejeno" id="Delno urejeno2" name="Urejenost_patch_kablov" />
                            <label class="lal" for="Delno urejeno2">Delno urejeno</label>
                        </div>
                        <div class="gumbki">    
                            <input type="radio" value="Neurejeno" id="neurejeno2" name="Urejenost_patch_kablov" />
                            <label class="lal" for="neurejeno2">neurejeno</label>
                        </div>
                    </div>
                </div>
                </div>
                
                <div class="nav">  
                    <div class="postrihani">                                        
                    <label class="col">Urejenost optike:</label>      
                    <div class="postavi">
                    <div class="radio-container">
                        <div class="gumbki">
                            <input type="radio" value="urejeno" id="urejeno3" name="Urejenost_optike" />
                            <label class="lal" for="urejeno3">urejeno</label>
                        </div>
                        <div class="gumbki">
                            <input type="radio" value="Delno urejeno" id="delno urejeno3" name="Urejenost_optike" />
                            <label class="lal" for="delno urejeno3">Delno urejeno</label>
                        </div>
                        <div class="gumbki">    
                            <input type="radio" value="neurejeno" id="neurejeno3" name="Urejenost_optike" />
                            <label class="lal" for="neurejeno3">neurejeno</label>
                        </div>
                    </div>
                </div>
            </div>

                <div class="nav">  
                    <div class="postrihani">                                        
                    <label class="col">Stanje prasnosti opreme:</label>      
                    <div class="postavi">
                    <div class="radio-container">
                        <div class="gumbki">
                            <input type="radio" value="ok" id="ok1" name="Stanje_prasnosti_opreme" />
                            <label class="lal" for="ok1">Ok</label>
                        </div>
                        <div class="gumbki">
                            <input type="radio" value="Srednje" id="Srednje1" name="Stanje_prasnosti_opreme" />
                            <label class="lal" for="Srednje1">Srednje</label>
                        </div>
                        <div class="gumbki">    
                            <input type="radio" value="Kriticno" id="Kriticno1" name="Stanje_prasnosti_opreme" />
                            <label class="lal" for="Kriticno1">Kriticno</label>
                        </div>
                    </div>
                </div>
            </div>

                <div class="nav">      
                    <div class="postrihani">                                   
                    <label class="col">Priklop na UPS(locene varovalke):</label>      
                    <div class="postavi">
                    <div class="radio-container">
                        <div class="gumbki">
                            <input type="radio" id="priklop OK" value="priklop OK" name="Priklop_na_UPS" />
                            <label class="lal" for="priklop OK">priklop OK</label>
                        </div>
                        <div class="gumbki">
                            <input type="radio" id="UPS - OK, razlicne varovalke NOK" value="UPS - OK, razlicne varovalke NOK"  name="Priklop_na_UPS" />
                            <label class="lal" for="UPS - OK, razlicne varovalke NOK">UPS - OK, razlicne varovalke NOK</label>
                        </div>
                        <div class="gumbki">    
                            <input type="radio" id="UPS - NOK" value="UPS - NOK" name="Priklop_na_UPS" />
                            <label class="lal" for="UPS - NOK">UPS - NOK</label>
                        </div>
                    </div>
                </div>
            </div>

                <div class="nav">      
                    <div class="postrihani">                                    
                    <label class="col">Prisotnost vode(radiator, pusca cev,..):</label>      
                        <div class="postavi">
                            <div class="radio-container">
                                <div class="gumbki">
                                    <input type="radio" id="stanje OK" value="stanje OK" name="Prisotnost_vode" />
                                    <label class="lal" for="stanje OK">stanje OK</label>
                                </div>
                                <div class="gumbki">
                                    <input type="radio" id="stanje NOK (opis v opombe)" value="stanje NOK (opis v opombe)" name="Prisotnost_vode" />
                                    <label class="lal" for="stanje NOK (opis v opombe)">stanje NOK (opis v opombe)</label>
                                </div>
                            </div>
                        </div>    
                </div>


                <div class="postrihani">
                    <label class="col">Vnesi temperaturo prostora:</label>
                    <div class="scale1">       
                        <section class="secia">
                                <input type="text" name="vnesi_temperaturo_prostora" placeholder="Temperatura" /> 
                       
                        </section>
                    </div>
                </div>

                <div class="postrihani">
                    <label class="col">Zadnja zabelezena Kontrola klime</label>
                    <label class="col">(Ce ni podatka zapisi ni podatka)</label>
                    <div class="scale1">
                        <section class="secia">
                            <h4></h4>
                                <input type="text" name="Zadnja_zabelezena_Kontrola_klime" placeholder="Kontrola klime" /> 
                        </section>
                    </div>
                </div>

                <div class="nav">                                         
                    <div class="postrihani"> 
                    <label class="col">Oznake elektricnih kablov:</label>      
                    <div class="postavi">
                    <div class="radio-container">
                        <div class="gumbki">
                            <input type="radio" id="urejeno4" value="urejeno" name="Oznake_elektricnih_kablov" />
                            <label class="lal" for="urejeno4">urejeno</label>
                        </div>
                        <div class="gumbki">
                            <input type="radio" id="delno urejeno4" value="delno urejeno" name="Oznake_elektricnih_kablov" />
                            <label class="lal" for="delno urejeno4">delno urejeno</label>
                        </div>
                        <div class="gumbki">    
                            <input type="radio" id="neurejeno4" value="neurejeno" name="Oznake_elektricnih_kablov" />
                            <label class="lal" for="neurejeno4">neurejeno</label>
                        </div>
                    </div>
                </div>
            </div>

                <div class="nav">                                         
                    <div class="postrihani"> 
                    <label class="col">Kontrola odprtosti vrat:</label>      
                    <div class="postavi">
                    <div class="radio-container">
                        <div class="gumbki">
                            <input type="radio" id="OK4" value="OK" name="Kontrola_odprtosti_vrat" />
                            <label class="lal" for="OK4"> OK</label>
                        </div>
                        <div class="gumbki">
                            <input type="radio" id="Ni kontrole" value="Ni kontrole" name="Kontrola_odprtosti_vrat" />
                            <label class="lal" for="Ni kontrole">Ni kontrole</label>
                        </div>
                        <div class="gumbki">    
                            <input type="radio" id="OK - ni kontrole" value="OK - ni kontrole" name="Kontrola_odprtosti_vrat" />
                            <label class="lal" for="OK - ni kontrole">OK - ni kontrole</label>
                        </div>
                    </div>
                </div>
            </div>
                
                <div class="nav">                
                    <div class="postrihani">                              
                    <label class="col">Javljalec pozara:</label>      
                    <div class="postavi">
                    <div class="radio-container">
                        <div class="gumbki">
                            <input type="radio" id="OK5" value="OK" name="Javljalec_pozara" />
                            <label class="lal" for="OK5">OK</label>
                        </div>
                        <div class="gumbki">
                            <input type="radio" id="Ni javljalca" value="Ni javljalca" name="Javljalec_pozara" />
                            <label class="lal" for="Ni javljalca">Ni javljalca</label>
                        </div>
                        <div class="gumbki">    
                            <input type="radio" id="OK - ni javljalca" value="OK - ni javljalca" name="Javljalec_pozara" />
                            <label class="lal" for="OK - ni javljalca">OK - ni javljalca</label>
                        </div>
                    </div>
                </div>
            </div>

                
                <div class="nav">                                         
                    <div class="postrihani">    
                    <label class="col">Univerzalni kljuc:</label>      
                    <div class="postavi">
                    <div class="radio-container">
                        <div class="gumbki">
                            <input type="radio" id="OK6" value="OK" name="Univerzalni_kljuc" />
                            <label class="lal" for="OK6">OK</label>
                        </div>
                        <div class="gumbki">
                            <input type="radio" id="nok3000" value="NOK" name="Univerzalni_kljuc" />
                            <label class="lal" for="nok3000">NOK</label>
                        </div>
                    </div>
                </div>
            </div>
                
                <div class="nav">      
                    <div class="postrihani">                                     
                    <label class="col">Gasilni aparat:</label>      
                    <div class="postavi">
                    <div class="radio-container">
                        <div class="gumbki">
                            <input type="radio" id="OK9" value="OK" name="Gasilni_aparat" />
                            <label class="lal" for="OK9">OK</label>
                        </div>
                        <div class="gumbki">
                            <input type="radio" id="NOK15" value="NOK" name="Gasilni_aparat" />
                            <label class="lal" for="NOK15">NOK</label>
                        </div>

                    </div>
                </div>
            </div>

                        
                <div class="nav">        
                    <div class="postrihani">                                   
                    <label class="col">Gasilni aparat:</label>      
                    <div class="postavi">
                        <div class="radio-container">
                            <div class="gumbki">
                                <input type="radio" id="OK91" value ="OK" name="Gorljivost" />
                                <label class="lal" for="OK91">OK</label>
                            </div>
                            <div class="gumbki">
                                <input type="radio" id="NOK16" value="NOK" name="Gorljivost" />
                                <label class="lal" for="NOK16">NOK</label>
                            </div>
                        </div>
                    </div>
                </div>




                <div class="nav">
                    <div class="postrihani">    
                    <label class="col">Opombe:(V kolikor ni opomb vpiši /):</label>
                        <div class="tra">
                            <div class="form__group">
                                <label for="message" class="form__label">opombe</label>
                                <textarea id="message" name="Opombe" class="form__field" placeholder="Vnesi opombo" rows="6"></textarea>
                            </div>
                        </div>
                    </div>

                    <div class="postrihani">
                        <label class="col">Vnesi svoj AR:</label>
                        <div class="scale1">       
                            <section class="secia">
                                    <input type="text" name="vnesi_svoj_ar" placeholder="Ar" /> 
                            </section>
                        </div>
                    </div>        

                    <div class="nav">
                        <div class="postrihani">
                            <label class="col">Shrani vnešene informacije:</label>
                            <div class="scale1">       
                                <section class="secia">
                                    
                                    <input type="submit" name="sendSubmit" value="Shrani" placeholder="submit-btn" />   
                                    
                                </section>
                            </div>
                        </div>
                    </div>

                    



                </div>
        </form>
    </div>
</body>











</html>


























<?php
session_start();
?>


<html>
<head>
    <meta charset="UTF-8">
    <meta name="width=device-width, initital-scale:1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="navbar1.css" />
</head>
<body>
  <div class="nav">
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

<div class="nav">
    <div class="just">
         <h4>Izberi Preventivo/<a href="ToExcelAll.php">Izvozi vse</a></h4>
        <label class="lab" for="togg">&#9776;</label>
    </div>
    <input type="checkbox" id="togg"/>
        <div class="icon-menu">
            <a href="bbtable.php?id=1">LT1</a>
            <a href="bbtable.php?id=2">LT2</a>
            <a href="bbtable.php?id=3">LT3</a>
            <a href="bbtable.php?id=4">LT4</a>
            <a href="bbtable.php?id=5">LT5</a>
            <a href="bbtable.php?id=6">LT6</a>
            <a href="bbtable.php?id=7">LT7</a>
            <a href="bbtable.php?id=8">LT8</a>
            <a href="bbtable.php?id=9">LT9</a>
            <a href="bbtable.php?id=10">LT10</a>
            <a href="bbtable.php?id=11">LT11</a>
            <a href="bbtable.php?id=12">LT12</a>
            <a href="bbtable.php?id=13">LT13</a>
            <a href="bbtable.php?id=14">LT14</a>
            <a href="bbtable.php?id=15">LT15</a>
            <a href="bbtable.php?id=16">LT16</a>
            <a href="bbtable.php?id=17">LT17</a>
            <a href="bbtable.php?id=18">LT18</a>
            <a href="bbtable.php?id=19">LT19</a>
            <a href="bbtable.php?id=20">LT20</a>
            <a href="bbtable.php?id=21">LT21</a>
            <a href="bbtable.php?id=22">LT22</a>
            <a href="bbtable.php?id=23">LT23</a>
            <a href="bbtable.php?id=24">LT24</a>
            <a href="bbtable.php?id=25">LT25</a>
            <a href="bbtable.php?id=26">LT26</a>
            <a href="bbtable.php?id=27">LT27</a>
            <a href="bbtable.php?id=28">LT28</a>
            <a href="bbtable.php?id=29">LT29</a>
            <a href="bbtable.php?id=30">LT30</a>
            <a href="bbtable.php?id=31">LT31</a>
            <a href="bbtable.php?id=32">LT32</a>
            <a href="bbtable.php?id=33">LT33</a>
            <a href="bbtable.php?id=34">LT34</a>
            <a href="bbtable.php?id=35">LT35</a>
            <a href="bbtable.php?id=36">LT36</a>
            <a href="bbtable.php?id=37">LT37</a>
            <a href="bbtable.php?id=38">LT38</a>
            <a href="bbtable.php?id=39">LT39</a>
            <a href="bbtable.php?id=40">LT40</a>
            <a href="bbtable.php?id=41">LT41</a>
            <a href="bbtable.php?id=42">LT42</a>
            <a href="bbtable.php?id=43">LT43</a>
            <a href="bbtable.php?id=44">LT44</a>
            <a href="bbtable.php?id=45">LT45</a>
            <a href="bbtable.php?id=46">LT46</a>
        </div>
    </div>  
</div>
</body>
</html>










































               











































































































































































































































































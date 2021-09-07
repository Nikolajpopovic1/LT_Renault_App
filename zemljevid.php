

<?php
session_start();
?>



<html> 
    <head>
      <link rel="stylesheet" href="leaflet.css" />
      <link rel="stylesheet" href="leaflet-search.css" />
      <!DOCTYPE html>
  <html>
      <head>
          
          <link rel="stylesheet" href="zemljevid.css">
      </head>
  
<body>

      
      <style>
            
    .center{
        left:46%;
        }
  
  #image-map {
        width: 100%;
        height: 96%;
        border: 1px solid #ccc;
        background-color: #FFFFFF;
        border-color: #ffffff;
      }
      
  #findbox {
      width: 161px;
      }
      
  .search-tooltip {
      width: 200px;
      }
      
  .leaflet-control-search .search-cancel {
      position: static;
      float: left;
      margin-left: -22px;
      }
      </style>
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
                                                    
                if(!empty($_SESSION["role"])){   
                    date_default_timezone_set('Europe/Ljubljana');
    
                    if(time() - $_SESSION["startTime"] > 900){
                        session_unset();
                        session_destroy();
                        header("Location: logout.php");
                    }else{
                        $_SESSION["startTime"] = time();
                    }
                                            
                    echo "<div class='center'; id='findbox'></div>";
                    echo "<div id='image-map'></div>";
                    echo "</div>";
                }
            ?>
  
      <script src="leaflet.js"></script>
      <script src="leaflet-search.js"></script>
          <script>
      
      
          //sample data values for populate map
          var data = [
              {"loc":[-93.7512,71.8750], "title":"LT29"}, 
              {"loc":[-123.3687,50.4375], "title":"LT28"},
              {"loc":[-172.6014,128.3750], "title":"LT27"},
              {"loc":[-191.9932,151.9375], "title":"LT31"},
              {"loc":[-145.0007,293.5000], "title":"LT24"},
              {"loc":[-209.3063,224.2500], "title":"LT38"},
              {"loc":[-203.1803,273.1250], "title":"LT37"},	
              {"loc":[-308.5539,169.5000], "title":"LT13"},
              {"loc":[-276.4302,256.3750], "title":"LT40"},
              {"loc":[-309.2331,272.9375], "title":"LT30"},
              {"loc":[-142.4944,382.8750], "title":"LT18"},
              {"loc":[-241.8018,349.8750], "title":"LT10"},	
              {"loc":[-374.1126,257.9375], "title":"LT41"},
              {"loc":[-364.8028,278.1250], "title":"LT36"},
              {"loc":[-352.1817,307.0000], "title":"LT35"},
              {"loc":[-395.3000,335.0625], "title":"LT16"},
              {"loc":[-291.8046,325.7500], "title":"LT26"},
              {"loc":[-127.3059,578.7500], "title":"LT15"},
              {"loc":[-114.1847,625.2500], "title":"LT22"},
              {"loc":[-219.4342,421.6875], "title":"LT39"},
              {"loc":[-241.9901,436.1250], "title":"LT11"},
              {"loc":[-245.2391,404.9375], "title":"LT34"},
              {"loc":[-342.4925,349.7500], "title":"LT9"},
              {"loc":[-317.8020,435.8750], "title":"LT12"},
              {"loc":[-362.8002,399.8125], "title":"LT7"},
              {"loc":[-425.2395,389.5625], "title":"LT6"},
              {"loc":[-427.8654,463.9375], "title":"LT5"},
              {"loc":[-372.4333,477.7500], "title":"LT8"},
              {"loc":[-348.4276,545.1875], "title":"LT4"},
              {"loc":[-427.6183,500.3125], "title":"C1"},
              {"loc":[-427.7410,524.9375], "title":"LT1"},
              {"loc":[-399.0595,570.1875], "title":"LT19"},
              {"loc":[-430.8676,585.3125], "title":"LT2"},
              {"loc":[-428.1184,612.3750], "title":"C2"},
              {"loc":[-404.1255,620.3750], "title":"LT3"},
              {"loc":[-489.9184,486.2500], "title":"LT17"},
              {"loc":[-482.9205,527.5000], "title":"LT33"},
              {"loc":[-469.3685,558.1250], "title":"LT23"},
              {"loc":[-486.1775,592.8125], "title":"LT32"},
              {"loc":[-462.3691,625.2500], "title":"LT14"}
          ];
  
  
      // create the slippy map
      var map = L.map('image-map', {
        minZoom: 0,
        maxZoom: 4,
        center: [0, 0],
        zoom: 0,
        crs: L.CRS.Simple
      });
      
      // dimensions of the image
      var w = 7073,
          h = 5122,
          url = 'verynice.png';  //slika zemljevida
  
      // calculate the edges of the image, in coordinate space
      var southWest = map.unproject([0, h], map.getMaxZoom()-1);
      var northEast = map.unproject([w, 0], map.getMaxZoom()-1);
      var bounds = new L.LatLngBounds(southWest, northEast);
  
      var markersLayer = new L.LayerGroup();	//layer contain searched elements
      map.addLayer(markersLayer);
  
      map.addControl( new L.Control.Search({
          container: 'findbox',
          layer: markersLayer,
          initial: false,
          collapsed: false
      }) );	
      //inizialize search control
  
      ////////////populate map with markers from sample data
      for(i in data) {
          var title = data[i].title,	//value searched
              loc = data[i].loc,		//position found
              marker = new L.Marker(new L.latLng(loc), {title: title} );//se property searched
          marker.bindPopup( title );
          markersLayer.addLayer(marker);
      }
      
      // add the image overlay, 
      // so that it covers the entire map
      L.imageOverlay(url, bounds).addTo(map);
      
  
      // tell leaflet that the map is exactly as big as the image
      map.setMaxBounds(bounds);
      
      </script>
  
    </body>
  </html>















































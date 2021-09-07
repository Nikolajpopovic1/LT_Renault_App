
function skrij(){
    document.getElementById("Vse1").style.display = "none";
    document.getElementById("Soba1").style.display = "none";
    document.getElementById("Omara1").style.display = "none";
    document.getElementById("Vse2").style.display = "none";
}

function Omara() {
           document.getElementById("spr").innerHTML = "Omara";
           document.getElementById("Vse12").value = "Omara";
           document.getElementById("spr").value = "Omara";
 }
 function Soba() {
        document.getElementById("spr").innerHTML = "Soba";

        document.getElementById("Vse12").value = "Soba";
        document.getElementById("spr").value = "Soba";
 }
 function Vse() {
        document.getElementById("spr").innerHTML = "Vse";
        document.getElementById("Vse12").value = "Vse";
        document.getElementById("spr").value = "Vse";
 }
 function Klima() {
    document.getElementById("spr1").innerHTML = "Klima";
    document.getElementById("Vse14").value = "KLima";
    document.getElementById("spr1").value = "Klima";
}
function Ventilator() {
 document.getElementById("spr1").innerHTML = "Ventilator";
 document.getElementById("Vse14").value = "Ventilator";
 document.getElementById("spr1").value = "Ventilator";
}
function Vse1() {
 document.getElementById("spr1").innerHTML = "Vse";
 document.getElementById("Vse14").value = "Vse";
 document.getElementById("spr1").value = "Vse";
}
function handleChange1() {
    str1 =document.getElementById("num1").innerHTML;
    str2 =document.getElementById("num2").innerHTML;
    str3 =document.getElementById("num3").innerHTML;
    if(str1 == "user"){
        document.getElementById("num1").innerHTML = "Admin";
    }else{
        document.getElementById("num1").innerHTML = "user";
    }    
        document.getElementById("num2").innerHTML = "";
        document.getElementById("num3").innerHTML = "";
 }

 function handleChange2() {
    str1 =document.getElementById("num1").innerHTML;
    str2 =document.getElementById("num2").innerHTML;
    str3 =document.getElementById("num3").innerHTML;
    if(str1 == "user"){
        document.getElementById("num1").innerHTML = "Admin";
    }else{
        document.getElementById("num1").innerHTML = "user";
    }    
        document.getElementById("num2").innerHTML = "";
        document.getElementById("num3").innerHTML = "";
 }
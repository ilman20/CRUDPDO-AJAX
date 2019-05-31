function hitung_kekurangan1() {
    var sdhdibayar1 = $("#sdhdibayar1").val();
    var kekurangan1 = 20000 - parseInt (sdhdibayar1);
    $("#kekurangan1").val(kekurangan1);
}

function hitung_kekurangan2() {
    var sdhdibayar2 = $("#sdhdibayar2").val();
    var kekurangan2 = 125000 - parseInt (sdhdibayar2);
    $("#kekurangan2").val(kekurangan2);
}

function hitung_kekurangan3() {
    var sdhdibayar3 = $("#sdhdibayar3").val();
    var kekurangan3 = 125000 - parseInt (sdhdibayar2);
    $("#kekurangan3").val(kekurangan3);
}



function total1() {
    var dibayarkan1 = $("#dibayarkan1").val();
    var total = 0 + parseInt(dibayarkan1); 
    $("#total").val(total);
}

function total2() {
    var dibayarkan1 = $("#dibayarkan1").val();
    var dibayarkan2 = $("#dibayarkan2").val();
    var total = parseInt(dibayarkan1) + parseInt(dibayarkan2); 
    $("#total").val(total);
}

function total3() {
    var dibayarkan1 = $("#dibayarkan1").val();
    var dibayarkan2 = $("#dibayarkan2").val();
    var dibayarkan3 = $("#dibayarkan3").val();
    var total =  parseInt(dibayarkan1)+ parseInt(dibayarkan2) + parseInt(dibayarkan3); 
    $("#total").val(total);
}



function kembalian() {
    var total = $("#total").val();
    var jmlbayar = $("#jml_bayar").val();
    var kembalian = parseInt(jmlbayar) - parseInt(total); 
    $("#kembalian").val(kembalian);
}

$(document).ready(function() {
    
        $("#sdhdibayar1").keyup(function(){
            hitung_kekurangan1();
        });
    
        $("#sdhdibayar2").keyup(function(){
            hitung_kekurangan2();
        });
    
        $("#sdhdibayar3").keyup(function(){
            hitung_kekurangan3();
        });
        $("#dibayarkan1").keyup(function(){
            total1();
        });
        $("#dibayarkan2").keyup(function(){
            total2();
        });
        $("#dibayarkan3").keyup(function(){
            total3();
        });
        $("#jml_bayar").keyup(function(){
            kembalian();
        });
    });

    

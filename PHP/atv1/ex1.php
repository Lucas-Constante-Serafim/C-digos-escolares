
<?php

$comprimento = $_POST ['comprimento'];
$largura = $_POST['largura'];
$area = 0;


$area = $comprimento * $largura;

if ($area < 100){

echo "Seu terreno é popular com " ,$area ,"m²";

}

else if ($area >= 100  && $area <= 500){

    echo "Seu terreno é master com " , $area ,"m²";
    
    }
    
else if ($area > 500){

        echo "Seu terreno é VIP com " , $area ,"m²";
        
        }
?>

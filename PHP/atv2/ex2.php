<?php 
/* Desenvolva um programa que leia o nome de um funcionário, seu salário, quantos anos ele trabalha na empresa e mostre seu novo salário, reajustado de acordo com a tabela a seguir: - Até 3 anos de empresa: aumento de 3% - entre 3 e 10 anos: aumento de 12.5% - 10 anos ou mais: aumento de 20%*/

$salario = $_POST ["salario"];
$anos = $_POST ["anos"];
$nome =  $_POST['nome'];
$novo_salario = $salario;

if($anos < 3 ){

    $novo_salario += $salario * 0.03;
}

else if($anos >= 3 && $anos <= 10 ){

    $novo_salario += $salario * 0.125;
}

if($anos > 10 ){

    $novo_salario += $salario * 0.2;
}
echo"o salario de $nome será de $novo_salario";

?>
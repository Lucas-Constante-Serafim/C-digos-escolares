<?php
/*Escreva um programa para aprovar ou não o empréstimo bancário para a compra de uma casa. O programa vai perguntar o valor da casa, o salário do comprador e em quantos anos ele vai pagar. Calcule o valor da prestação mensal, sabendo que ela não pode exceder 30% do salário ou então o empréstimo será negado.
 */

 $salario = $_POST ['salario'];
 $anos = $_POST ['anos'];
 $valor_casa = $_POST['valor_casa'];
 $parcela = 0 ;

 $anos = $anos * 12;
 $parcela = $valor_casa / $anos;

 $exedente = $salario * 0.3;

 if($parcela > $exedente){

    echo"O emprestimo foi negado a parcela excedeu 30% do salário, ficou em $parcela";
 }
 
else{
    echo"O emprestimo foi aprovado parcela de $parcela";
}

?>
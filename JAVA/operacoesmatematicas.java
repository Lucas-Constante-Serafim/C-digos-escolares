//Lucas C Serafim  2-53

import javax.swing.JOptionPane;

//vai importar o pop-up

public class operacoesmatematicas {
    public static void main(String[] args) {
        
        try{

            //tentar achar o arquivo

            String primeironumerostring = JOptionPane.showInputDialog
            ("Digite o primeiro número (inteiro ou fluante/real):");
            double primeironumero = Double.parseDouble(primeironumerostring);

            //solicita ao usuario um numero

            String segundonumerostring = JOptionPane.showInputDialog
            ("Digite o segundo número (inteiro ou fluante/real):");
            double segundonumero = Double.parseDouble(segundonumerostring);

            //solicita ao usuario outro numero


            double soma = primeironumero + segundonumero;
            double sub = primeironumero - segundonumero;
            double mult = primeironumero * segundonumero;
            double div = (segundonumero != 0)
            ? primeironumero / segundonumero : Double.NaN; //evita divisão por zero

            //resultados das contas

            String mensagem = String.format
            ("Resultados das operações entre %.2f e %.2f:\n", primeironumero, segundonumero);
            mensagem += String.format("Soma: %.2f/n", soma);
            mensagem += String.format("subtração: %.2f\n", sub);
            mensagem += String.format("Multiplicação: %.2f\n", mult);
            mensagem += String.format("Divisão: %s\n",
            (segundonumero != 0) ? String.format("%.2f",div) : "Indefinida (divisão por zero)");

            //mostra o resultados das contas

            JOptionPane.showMessageDialog(null, mensagem, "Resultados das operações",
            JOptionPane.INFORMATION_MESSAGE);
            } catch (NumberFormatException e) {
                JOptionPane.showMessageDialog(null,
                "por favor, insira um numero valido.", "Erro de entrada", JOptionPane.ERROR_MESSAGE);
            }

            //caso de erro aparecera uma notificação de erro

    }
}

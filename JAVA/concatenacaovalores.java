//Lucas Constante Serafim
//2-53

import javax.swing.JOptionPane;

//importa o pop-up

public class concatenacaovalores {
    public static void main(String[] args) {
        
        String primeirovalor = JOptionPane.showInputDialog("Digite o primeiro valor: ");

        //solicita ao usuario um valor

        String segundovalor = JOptionPane.showInputDialog("Digite o segundo valor: ");

        //solicita ao usuario outro valor

        String resultado = primeirovalor + segundovalor;

        //concatena os resultados

        JOptionPane.showMessageDialog(null, 
        "Resultado da concatenação: " + resultado,"Resultado", JOptionPane.INFORMATION_MESSAGE);

        //mostra na tela os resultados

    }
}

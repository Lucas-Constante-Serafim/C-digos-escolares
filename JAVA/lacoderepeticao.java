//Lucas C Serafim 2-53

import javax.swing.JOptionPane;

public class lacoderepeticao {
    public static void main(String[] args) {
        int continuar = JOptionPane.YES_OPTION;
        while (continuar == JOptionPane.YES_OPTION) {
            
            String input = JOptionPane.showInputDialog("Digite um número:");

            int numero = Integer.parseInt(input);

            int diferenca = 100 - numero;

            String mensagem = "Falta " + diferenca + " para chegar a 100";

            JOptionPane.showMessageDialog(null, mensagem);

            continuar = JOptionPane.showConfirmDialog(null, "Deseja continuar?", "Continuar", JOptionPane.YES_NO_OPTION);
        }

//esse é um laço de reprtição para chegar ate o numero 100

    }
}

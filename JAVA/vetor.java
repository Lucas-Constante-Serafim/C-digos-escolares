//Lucas C Serafim

import javax.swing.JOptionPane;

public class vetor {
    public static void main(String[] args) {
        
        String[] valores = new String[4];

//aqui fala quantas casas o vetor vai poder guardar

        for (int i = 0; i < valores.length; i++) {
            valores[i] = JOptionPane.showInputDialog("Digite um valor " + (i + 1) + ":");
        }

//aqui incia o laço de repetição

        StringBuilder mensagem = new StringBuilder("Valores digitados: \n");
        for (int i = 0; i < valores.length; i ++) {
            mensagem.append("Valor ").append(i + 1).append(": ").append(valores[i]).append("\n");
        }

//aqui incia outro laço de repetição

        JOptionPane.showMessageDialog(null, mensagem.toString(), "Valores digitados",
        JOptionPane.INFORMATION_MESSAGE);

//aqui mostra a mensagem ao usuario

    }
}

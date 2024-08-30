import javax.swing.JOptionPane;

public class matriz {
    public static void main(String[] args) {
        String inputLinhas = JOptionPane.showInputDialog("insira o numero de linhas na matriz: ");
        int linhas = Integer.parseInt(inputLinhas);

//aqui o usuario insere os numeros de linhas na matriz

        String inputColunas = JOptionPane.showInputDialog("insira o numero de colunas na matriz: ");
        int colunas = Integer.parseInt(inputColunas);

//aqui o usuario insere os numeros de colunas na matriz

        int[][] matriz = new int[linhas][colunas];

//aqui esta sendo declarada a matriz

        for (int i = 0; i < colunas; i++){
            for (int j = 0; j < colunas; j++) {
                String inputValor = JOptionPane.showInputDialog("insira o valor para a posição [" + i + "][" + j + "]:");
                matriz[i][j] = Integer.parseInt(inputValor);
            }
        }

//aqui incia um laço de repetição para determinar as colunas da matriz

        StringBuilder matrizStr = new StringBuilder("Matriz preenchida: \n");
        for (int i = 0; i < linhas; i++) {
            for (int j = 0; j < colunas; j++) {
                matrizStr.append(matriz[i][j]).append(" ");
            }
            matrizStr.append("\n");
        }

//aqui incia um laço de repetição para determinar as linhas da matriz

        JOptionPane.showMessageDialog(null, matrizStr.toString());

//aqui manda a mensagem para o usuario

    }
}

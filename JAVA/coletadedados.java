//Lucas Constante Serafim
//2-53

import javax.swing.JOptionPane;

//importa o pop-up

public class coletadedados {
    public static void main(String[] args) {
     
        
        String texto = JOptionPane.showInputDialog("Digite um valor \n uma variavel do tipo \n String'texto:'");

        //aqui o usuario ira escrever algo do tipo String 'texto'

        int inteiro = Integer.parseInt(JOptionPane.showInputDialog
        ("Digite um valor para \n uma variaveldo tipo inteiro \n ex:'numero indivisivel/sem virgula'"));

        //aqui o usuario ira escrever algo do tipo inteiro 'indivisivel/sem virgula'

        double pontoflutuante = Double.parseDouble(JOptionPane.showInputDialog
        ("Digite um valor para \n uma variavel do tipo float/real \n ex:'numero divisivel'"));

        //aqui o usuario ira escrever algo do tipo float 'real'

        int respostaboolean = JOptionPane.showConfirmDialog(null, "\"escolha uma opção para \n uma variavel do tipo boleano \n"
        , "escolha", JOptionPane.YES_NO_OPTION);

        boolean booleano = (respostaboolean == JOptionPane.YES_OPTION);

        //aqui o usuario escolhera uma opção entre sim e não

        String mensagem = String.format("var. String: %s\nvar. inteiro: %d\nvar. Float/real: %.2f\nvar. boleana: %b",
        texto, inteiro, pontoflutuante, booleano);
        JOptionPane.showMessageDialog(null, mensagem, "Dados Inseridos",
        JOptionPane.INFORMATION_MESSAGE);

        //aqui sera colocado tudos os dados que o usuario digitou

    }
}
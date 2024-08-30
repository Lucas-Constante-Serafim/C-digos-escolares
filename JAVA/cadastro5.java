//Lucas Consatnte Serafim
//Turma:253

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.FileWriter;
import java.time.LocalDate;
import java.time.Period;
import javax.swing.*;

//isso é para impotar as coisas necessarias 

public class cadastro5 {
    private static final String FILE_PATH = "cadastro.txt";
    public static void main(String[] args) {

//isso é para os dados cadastrados irem para outro arquivo

    while (true) {

        String nome = JOptionPane.showInputDialog(null,
        "Digite o nome: ", "Cadastro de usuario: ",
        JOptionPane.PLAIN_MESSAGE);

        if (nome == null || nome.trim().isEmpty()) {

            JOptionPane.showMessageDialog(null,
            "Nome não pode ser vazio!",
            "Erro", JOptionPane.ERROR_MESSAGE);
            continue;

        }

        String sobrenome = JOptionPane.showInputDialog(null,
        "Digite o sobrenome: ", "Cadastro de usuario: ",
        JOptionPane.PLAIN_MESSAGE);

        if (sobrenome == null || nome.trim().isEmpty()) {

            JOptionPane.showMessageDialog(null,
            "Sobrenome não pode ser vazio!",
            "Erro", JOptionPane.ERROR_MESSAGE);
            continue;

        }

        String[] opcoesSexo = {"Masculino", "Feminino", "Outro"};
        String sexo = (String) JOptionPane.showInputDialog(null,
        "Selecione o sexo: ", "Cadastro de usuario",
        JOptionPane.PLAIN_MESSAGE, null, opcoesSexo, opcoesSexo[0]);

        if (sexo == null) {

            JOptionPane.showMessageDialog(null, "Sexo deve ser selecionado!", "Erro",
            JOptionPane.ERROR_MESSAGE);
            continue;

        }

        salvarCadatro(nome, sobrenome, sexo);
        int resposta = JOptionPane.showConfirmDialog(null,
        "Deseja cadastrar outra pessoa?", "Continuar",
        JOptionPane.YES_NO_OPTION);

        if (resposta == JOptionPane.NO_OPTION) {

            break;

        }
    }       
}

//aqui e um laço de repetição em pop-pu dos dados do cadastros

    private static void salvarCadatro(String nome, String sobrenome, String sexo) {

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_PATH,
        true))) {

            writer.write(nome + "," + sobrenome + "," + sexo);
            writer.newLine();
            JOptionPane.showMessageDialog(null,
            "Cadastro realizado com sucesso!",
            "Sucesso", JOptionPane.INFORMATION_MESSAGE);

        }

//aqui e para salvar os dados

        catch (IOException e) {

            JOptionPane.showMessageDialog(null,
            "Erro ao salvar os dados!",
            "Erro", JOptionPane.ERROR_MESSAGE);

            //isso é para caso de erro

        }
    }
}
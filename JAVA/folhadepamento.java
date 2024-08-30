//Lucas C Serefim  2-53

import javax.swing.JOptionPane;

// importa o pop-up

public class folhadepamento {
    public static void main(String[] args) {
        
        String nome = JOptionPane.showInputDialog("Digite seu nome");

        double salariobruto = Double.parseDouble(JOptionPane.showInputDialog
        ("Digite seu salario bruto: "));

        //aqui é para pedir o salario bruto e nome do usuario

        double inss = calcularINSS(salariobruto);

        double impostoderenda = calcularImpostoDeRenda(salariobruto - inss);

        double  salarioliquido = salariobruto - inss - impostoderenda;

        String mensagem = String.format(
                "Folha de pagamento de %s:\n" +
                "Salario bruto: R$ %.2f\n" +
                "Desconto de INSS: R$ %.2f\n" +
                "Desconto imposto de renda: R$ %.2f\n" +
                "Salario liquido: R$ %.2f\n",
                nome, salariobruto, inss, impostoderenda, salarioliquido);
        JOptionPane.showMessageDialog(null, mensagem, "Folha de pagamento",
        JOptionPane.INFORMATION_MESSAGE);

//aqui é para mostrar as informações ao usuario

    }
    private static double calcularINSS(double salariobruto) {
        double inss = 0.0;

        if (salariobruto <= 1212.00) {
            inss = salariobruto * 0.075;
        }else if (salariobruto <= 2427.35) {
            inss = (1212.00 * 0.075) + ((salariobruto - 1212.00) * 0.09);
        }else if (salariobruto <= 3641.03) {
            inss = (1212.00 * 0.075) + ((2427.35 - 1212.00) * 0.09) + ((salariobruto - 2427.35) * 0.12);
        }else if (salariobruto <= 7087.22) {
            inss = (1212.00 * 0.075) + ((2427.35 - 1212.00) * 0.09) + ((3641.03 - 2427.35) * 0.12) + ((salariobruto - 3641) * 0.14);
        }else {
            inss = (1212.00 * 0.075) + ((2427.35 - 1212.00) * 0.09) + ((3641.03 - 2427.35) * 0.12) + ((7087.22 - 3641) * 0.14);
        }
        return inss;
    }

//isso é para calcular o inss

    private static double calcularImpostoDeRenda(double salariobase) {
        double impostoderenda = 0.0;
        if (salariobase <= 1903.98) {
            impostoderenda = 0.0;
        }else if (salariobase <= 2826.65) {
            impostoderenda = (salariobase - 1903.98) * 0.075;
        }else if (salariobase <= 3751.05) {
            impostoderenda = ((2826.65 - 1903.98) * 0.075) + ((salariobase - 2826.65) * 0.15);
        }else if (salariobase <= 4664.68) {
            impostoderenda = ((2826.65 - 1903.98) * 0.075) + ((3751.05 - 2826.65) * 0.15) + ((salariobase - 3751.05) * 0.225);
        }else {
            impostoderenda = ((2826.65 - 1903.98) * 0.075) + ((3751.05 - 2826.65) * 0.15) + ((4664.68 - 3751.05) * 0.225) + ((salariobase - 4664.68) * 0.275);
        }
        return impostoderenda;
    }

//isso é para calcular o imposto de renda

}
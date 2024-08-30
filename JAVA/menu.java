//Lucas Constante Serafim     
//Turma:253


import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;




public class menu {
    public static void main(String[] args) {

        // criação do frame principal
        JFrame frame = new JFrame ("menu principal");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(470, 370);
        frame.setLayout(new BorderLayout());

        //criação da barra e menu
        JMenuBar menubar = new JMenuBar ();

        //criação do menu
        JMenu menu = new JMenu ("opções");
        menubar.add(menu);

        //criação dos itens do menu

        JMenuItem coletadedadosItem = new JMenuItem("Coleta de dados");
        JMenuItem concatenacaovaloresItem = new JMenuItem("Concatenação de valores");
        JMenuItem folhadepamentoItem = new JMenuItem("Folha de pagamento");
        JMenuItem lacoderepeticaoItem = new JMenuItem("Laço de repetição");
        JMenuItem mainItem = new JMenuItem("Main");
        JMenuItem matrizItem = new JMenuItem("Matriz");
        JMenuItem operacoesmatematicasItem = new JMenuItem("Operações matematicas");
        JMenuItem vetorItem = new JMenuItem("Vetor");
       
        //adicionandoitens ao menu 
        menu.add(coletadedadosItem);
        menu.add(concatenacaovaloresItem);
        menu.add(folhadepamentoItem);
        menu.add(lacoderepeticaoItem);
        menu.add(mainItem);
        menu.add(matrizItem);
        menu.add(operacoesmatematicasItem);
        menu.add(vetorItem);

        //adicionando actionListener para cada item de menu 

        coletadedadosItem.addActionListener(new ActionListener(){

            @Override 
            public void actionPerformed (ActionEvent e) {
                coletadedados.main(null); //chama o arquivo perguntas_em_popup.java

        }
        
    });

    concatenacaovaloresItem.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
            concatenacaovalores.main(null);
        }
    });

    folhadepamentoItem.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
           folhadepamento.main(null);
        }
    });

    lacoderepeticaoItem.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
           lacoderepeticao.main(null);
        }
    });

    mainItem.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
           main.main(null);
        }
    });

    matrizItem.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
           matriz.main(null);
        }
    });

    operacoesmatematicasItem.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
           operacoesmatematicas.main(null);
        }
    });
    vetorItem.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
           vetor.main(null);
        }
    });

    //adicionando a barra de menu ao frame 

    frame.setJMenuBar(menubar);

    //criação do pianel para o botão de sair 

    JPanel panel = new JPanel();
    JButton sairButton = new JButton("sair"); 

    //adicionando actionListener para o botão de sair 
    sairButton.addActionListener( new ActionListener(){

        @Override
        public void actionPerformed (ActionEvent e){

            System.exit(0); //sai do programa 

            
        }
    });

//adicionando o botão ao painel  

panel.add(sairButton);

// adicionando o painel ao frame 
frame.add(panel, BorderLayout.SOUTH);

//Configurando o franme para se visível 
frame.setVisible(true);
}}
//Lucas Constante Serafim     
//Turma:253


import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;




public class unificador {

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

        JMenuItem popItem = new JMenuItem("Perguntas em popup");
        JMenuItem popusItem = new JMenuItem("Ola mundo popup");
        JMenuItem cadastro5Item = new JMenuItem("Cadastro em popup");
        JMenuItem cadastro1Item = new JMenuItem("Cadastro1");
        JMenuItem cadastro2Item = new JMenuItem("Cadastro2");
        JMenuItem cadastro3Item = new JMenuItem("Cadastro3");
        JMenuItem cadastro4Item = new JMenuItem("Cadastro4");
        JMenuItem hello_wordItem = new JMenuItem("hello world");


        //adicionandoitens ao menu 
        menu.add (popItem);
        menu.add(popusItem);
        menu.add(cadastro5Item);
        menu.add(cadastro1Item);
        menu.add(cadastro2Item);
        menu.add(cadastro3Item);
        menu.add(cadastro4Item);
        menu.add(hello_wordItem);

        //adicionando actionListener para cada item de menu 

        popItem.addActionListener(new ActionListener(){

            @Override 
            public void actionPerformed (ActionEvent e) {
                pop.main(null); //chama o arquivo perguntas_em_popup.java

        }
        
    });

    cadastro5Item.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
            cadastro5.main(null);
        }
    });

    cadastro1Item.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
           cadastro1.main(null);
        }
    });

    cadastro2Item.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
           cadastro2.main(null);
        }
    });

    cadastro3Item.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
           cadastro3.main(null);
        }
    });
    cadastro4Item.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
           cadastro4.main(null);
        }
    });
    hello_wordItem.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
           hello_word.main(null);
        }
    });

    popusItem.addActionListener(new ActionListener() {
        
        @Override
        public void actionPerformed (ActionEvent e ){
            popus.main(null);
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
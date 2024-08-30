import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;

public class my_menu{

    public static void main(String[] args){
        //Criação  de frame principal
        JFrame frame = new JFrame("Menu Principal");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(470, 370);
        frame.setLayout(new BorderLayout());

        //criação da barra de menu
        JMenuBar menuBar = new JMenuBar();

        //criação do menu
        JMenu menu = new JMenu("Opções");
        menuBar.add(menu);

        //criação dos itens do menu
        JMenuItem cadastroLACOdeREPItem = new JMenuItem("Cadastro LACO de REP");
        JMenuItem olamundopopupItem = new JMenuItem("olá mundo popup");

        //Adicionando itens ao menu
        menu.add(cadastroLACOdeREPItem);
        menu.add(olamundopopupItem);

        //Adicionando ActionListener para cada itemde menu
        cadastroLACOdeREPItem.addActionListener(new ActionListener(){

            @Override 
            public void actionPerformed(ActionEvent e() {
                heloworld.javapopup.main(null); //chama o arquivo OlaMundoPopup.java
            
                }
                });

                //



            }
        }
        
    }

}
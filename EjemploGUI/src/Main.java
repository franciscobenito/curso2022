
import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class Main extends JFrame{

	public static void main(String[] args) {
		JFrame frame = new JFrame ("Cambio de color");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setLocationRelativeTo(null);
		frame.getContentPane().setBackground(Color.gray);
		
		Container panel = frame.getContentPane();
		
		JButton rojo = new JButton ("Rojo");
		JButton azul = new JButton ("Azul");
		JButton verde = new JButton ("Verde");
		JButton amarillo = new JButton ("Amarillo");
		
		frame.setLayout(new FlowLayout());
		panel.add(rojo);
		panel.add(azul);
		panel.add(verde);
		panel.add(amarillo);
		
		
		rojo.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frame.getContentPane().setBackground(Color.RED);
			}
		});
		
		azul.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frame.getContentPane().setBackground(Color.BLUE);
			}
		});
		
		verde.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frame.getContentPane().setBackground(Color.GREEN);
			}
		});
		
		amarillo.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frame.getContentPane().setBackground(Color.YELLOW);
			}
		});
		
		
		frame.setSize(300, 300);
		frame.setVisible(true);
	}
	
	

}

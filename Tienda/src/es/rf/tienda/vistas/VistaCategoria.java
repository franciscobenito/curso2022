package es.rf.tienda.vistas;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

import es.rf.tienda.dominio.Categoria;

public class VistaCategoria {

	Categoria object;
	JFrame frame;
	JPanel panel;
	JPanel panelLabel;
	JPanel panelText;
	JPanel panelButton;
	JLabel idLabel;
	JLabel nombreLabel;
	JLabel descrLabel;
	JTextField idText;
	JTextField nombreText;
	JTextField descripcionText;
	JButton aceptar;
	JButton cancelar;
	
	VistaCategoria(){
		vista("Categorias");
	}
	
	public void vista (String title) {
		
		frame = new JFrame(title);
		frame.getContentPane().setLayout(new BorderLayout());
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setSize(400,150);
		frame.setLocationRelativeTo(null);
		
		panel = new JPanel();
		panel.setLayout(new BorderLayout());
		panelLabel = new JPanel();
		panelLabel.setLayout(new GridLayout(3,1));
		panelText = new JPanel();
		panelText.setLayout(new GridLayout(3,1));
		panelButton = new JPanel();
		panelButton.setLayout(new FlowLayout());
		
		idLabel = new JLabel("ID");
		nombreLabel = new JLabel("Nombre");
		descrLabel = new JLabel("Descripcion");
		idText = new JTextField();
		nombreText = new JTextField();
		descripcionText = new JTextField();
		aceptar = new JButton("Aceptar");
		cancelar = new JButton("Cancelar");
		
		panelLabel.add(idLabel);
		panelLabel.add(nombreLabel);
		panelLabel.add(descrLabel);
		panelText.add(idText);
		panelText.add(nombreText);
		panelText.add(descripcionText);
		panelButton.add(aceptar);
		panelButton.add(cancelar);
		
		panel.add(panelLabel, BorderLayout.WEST);
		panel.add(panelText, BorderLayout.CENTER);
		panel.add(panelButton, BorderLayout.SOUTH);
		
		frame.setContentPane(panel);
		frame.setVisible(true);
		
	}
}
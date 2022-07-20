package es.rf.tienda.vistas;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.JTextField;

public class VistaCategoria {

	private JFrame frame;
	private JFrame categorias;
	private JPanel panel;
	private JPanel panelLabel;
	private JPanel panelText;
	private JPanel panelButton;
	private JLabel idLabel;
	private JLabel nombreLabel;
	private JLabel descrLabel;
	private JButton seleccionar;
	private JTextField nombreText;
	private JTextField descripcionText;
	private JButton aceptar;
	private JButton cancelar;
	
	public VistaCategoria(){
		vista("Categorias");
	}
	
	public void vista (String title) {
		
		//Ventana principal
		frame = new JFrame(title);
		frame.getContentPane().setLayout(new BorderLayout());
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setSize(400,150);
		frame.setLocationRelativeTo(null);
		
		//Paneles
		//Principal
		panel = new JPanel();
		panel.setLayout(new BorderLayout());
		//De etiquetas
		panelLabel = new JPanel();
		panelLabel.setLayout(new GridLayout(3,1));
		//De texto
		panelText = new JPanel();
		panelText.setLayout(new GridLayout(3,1));
		//De botones
		panelButton = new JPanel();
		panelButton.setLayout(new FlowLayout());
		
		panel.add(panelLabel, BorderLayout.WEST);
		panel.add(panelText, BorderLayout.CENTER);
		panel.add(panelButton, BorderLayout.SOUTH);
		
		//Contenedores
		idLabel = new JLabel("ID");
		nombreLabel = new JLabel("Nombre");
		descrLabel = new JLabel("Descripcion");
		seleccionar = new JButton("Seleccionar");
		nombreText = new JTextField();
		descripcionText = new JTextField();
		aceptar = new JButton("Aceptar");
		cancelar = new JButton("Cancelar");
		
		panelLabel.add(idLabel);
		panelLabel.add(nombreLabel);
		panelLabel.add(descrLabel);
		panelText.add(seleccionar);
		panelText.add(nombreText);
		panelText.add(descripcionText);
		panelButton.add(aceptar);
		panelButton.add(cancelar);
		
		//
		frame.setContentPane(panel);
		frame.setVisible(true);
		
		//Acción botones
		seleccionar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//Crea otra ventana donde se listan las categorías
				categorias = new JFrame("Lista de categorias");
				categorias.getContentPane().setLayout(new BorderLayout());
				categorias.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
				
				categorias.setLocationRelativeTo(null);
				
				JPanel p = new JPanel();
				p.setLayout(new BorderLayout());
				
				String[] cat = {"001", "002", "003", "004", "005", "006", "007", "008", "009"};
				JList lista = new JList(cat);
				p.add(lista, BorderLayout.CENTER);
				
				JButton aceptar2 = new JButton ("Aceptar");
				p.add(aceptar2, BorderLayout.SOUTH);
				
				categorias.setContentPane(p);
				categorias.pack();
				categorias.setVisible(true);
			}
			
		});
		aceptar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//TODO: grabar y cerrar
				
				frame.setVisible(false);
				frame.dispose();
			}
		});
		cancelar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frame.setVisible(false);
				frame.dispose();
			}
		});		
	}
}

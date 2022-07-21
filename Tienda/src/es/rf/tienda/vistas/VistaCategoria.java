package es.rf.tienda.vistas;

import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Scanner;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.SpringLayout;
import javax.swing.border.BevelBorder;
import javax.swing.border.EmptyBorder;
import javax.swing.table.TableColumn;

public class VistaCategoria{

	private JFrame frame;
	private JPanel panel;
	private JPanel panelLabel;
	private JPanel panelTabla;
	private JPanel panelButton;
	private JLabel catLabel;
	private JButton nuevo;
	private JButton modificar;
	private JButton ver;
	private JButton salir;
	private JTable tablaCat;
	
	public VistaCategoria(){
		vista("Categorias");
	}

	public void vista (String title) {
		
		//Ventana principal
		frame = new JFrame(title);
		frame.getContentPane().setLayout(new BorderLayout());
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setSize(800,300);
		frame.setLocationRelativeTo(null);
		
		//Paneles
		//Principal
		panel = new JPanel();
		panel.setBorder(new EmptyBorder(5, 5, 5, 5));
		panel.setLayout(new BorderLayout(0,0));
		//De etiquetas
		panelLabel = new JPanel();
		//De tabla
		panelTabla = new JPanel();
		//De botones
		panelButton = new JPanel();
		panelButton.setLayout(new FlowLayout());
				
		//Contenedores
		catLabel = new JLabel("Tabla de categorías");
		nuevo = new JButton("Nueva");
		modificar = new JButton("Modificar");
		ver = new JButton("Ver");
		salir = new JButton("Salir");
		tablaCat = new JTable();
		tablaCat.setBorder(new BevelBorder(BevelBorder.RAISED, null, null, null, null));
		tablaCat.setOpaque(false);
		tablaCat.addColumn(new TableColumn());
		//scrollPaneTabla = new JScrollPane();
		//scrollPaneTabla.setViewportView(tablaCat);

		panelLabel.add(catLabel);
		panelTabla.add(tablaCat);
		//panelTabla.add(scrollPaneTabla, BorderLayout.WEST);
		panelButton.add(nuevo);
		panelButton.add(modificar);
		panelButton.add(ver);
		panelButton.add(salir);
				
		panel.add(panelLabel, BorderLayout.NORTH);
		panel.add(panelTabla, BorderLayout.CENTER);
		panel.add(panelButton, BorderLayout.SOUTH);
		
		frame.setContentPane(panel);
		frame.setVisible(true);
		
		//Acción botones
		
		nuevo.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				crearNuevaCat();
				/*System.out.println("Añadir ID de la categoría");
				Scanner sc = new Scanner(System.in);
				
				JLabel idCat = new JLabel(sc.next());
				tablaCat.add(idCat);
				

				System.out.println("Añadir nombre de la categoría");
				JLabel nombreCat = new JLabel(sc.next());
				tablaCat.add(nombreCat);				

				System.out.println("Añadir descripción de la categoría");
				JLabel descCat = new JLabel(sc.next());
				tablaCat.add(descCat);
				
				frame.setVisible(false);
				frame.dispose();*/
			}

			
		});
		salir.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frame.setVisible(false);
				frame.dispose();
			}
		});		
	}
	
	private void crearNuevaCat() {
		JFrame frame2 = new JFrame("Añadir categoría");
		frame2.getContentPane().setLayout(new BorderLayout());
		frame2.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame2.setSize(400,150);
		frame2.setLocationRelativeTo(null);
		
		//Paneles
		//Principal
		JPanel panel2 = new JPanel();
		panel2.setLayout(new BorderLayout());
		//De etiquetas
		JPanel panelLabel2 = new JPanel();
		panelLabel2.setLayout(new GridLayout(3,1));
		//De texto
		JPanel panelText2 = new JPanel();
		panelText2.setLayout(new GridLayout(3,1));
		//De botones
		JPanel panelButton2 = new JPanel();
		panelButton2.setLayout(new FlowLayout());
		
		panel2.add(panelLabel2, BorderLayout.WEST);
		panel2.add(panelText2, BorderLayout.CENTER);
		panel2.add(panelButton2, BorderLayout.SOUTH);
		
		//Contenedores
		JLabel idLabel = new JLabel("ID");
		JLabel nombreLabel = new JLabel("Nombre");
		JLabel descrLabel = new JLabel("Descripcion");
		JTextField idText = new JTextField();
		JTextField nombreText = new JTextField();
		JTextField descripcionText = new JTextField();
		JButton aceptar = new JButton("Aceptar");
		JButton cancelar = new JButton("Cancelar");
		
		panelLabel2.add(idLabel);
		panelLabel2.add(nombreLabel);
		panelLabel2.add(descrLabel);
		panelText2.add(idText);
		panelText2.add(nombreText);
		panelText2.add(descripcionText);
		panelButton2.add(aceptar);
		panelButton2.add(cancelar);
		
		frame2.setContentPane(panel2);
		frame2.setVisible(true);
	}
}
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.net.UnknownHostException;

public class ClienteTCPSimple {

	private static final String DIRECCION = "localhost";
	private static final int PUERTO = 6000;
	
	public static void main(String[] args) {
		
		System.out.println("Conectando a: "+DIRECCION+" desde el puerto: "+PUERTO);
		try {
			Socket cliente = new Socket(DIRECCION, PUERTO);
			System.out.println("Conctado a: "+cliente.getRemoteSocketAddress());
			
			DataOutputStream out = new DataOutputStream(cliente.getOutputStream());
			out.writeUTF("Gracias por conectarte a:" + cliente.getLocalAddress()+"\n");
			
			DataInputStream in = new DataInputStream(cliente.getInputStream());
			System.out.println(in.readUTF());
			
			out.close();
			in.close();
			cliente.close();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}

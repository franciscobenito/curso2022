import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.URL;

public class ServidorTCPSimple {
	
	private static final String SALUDO = "Servidor esperando un puerto ";
	private static final int TIMEOUT  = 10000 ;
	private static final int PUERTO = 6000;
	
	private static ServerSocket serverSocket;
	
	public static void main(String[] args) throws IOException{
		
		serverSocket = new ServerSocket(PUERTO);
		serverSocket.setSoTimeout(TIMEOUT);
		
		while(true) {
			try {
				System.out.println(SALUDO + serverSocket.getLocalPort()+"...");
				Socket server = serverSocket.accept();
				System.out.println("Conexi�n desde: "+server.getRemoteSocketAddress());
				DataInputStream in = new DataInputStream(server.getInputStream());
				System.out.println(in.readUTF());
				DataOutputStream out = new DataOutputStream(server.getOutputStream());
				out.writeUTF("Gracias por conectarte a:" + server.getLocalAddress()+"\n");
				
				in.close();
				out.close();
				server.close();
				break;
			}catch(SocketTimeoutException e) {
				e.printStackTrace();
			}catch(IOException e){
				e.printStackTrace();
				break;
			}
		}
	}
}

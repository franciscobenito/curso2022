import static org.junit.jupiter.api.Assertions.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

class OracleJDBCTest3 {

	private static Connection conn;
	private static OracleJDBC ojdbc;
	
	public final static String CLAVE_1 = "@2";
	public final static String TEXTO_1 = "Este es el texto para el pais";
	public final static String REGION_1 = "1";
	public static String INSERT_1;
	public final static String SELECT_G = "SELECT * FROM COUNTRIES WHERE";
	public final static String SELECT_I = "SELECT * FROM COUNTRIES";
	private static final String SELECT_COUNT = "SELECT count(*) as contador FROM COUNTRIES WHERE";
	
	@BeforeAll
	public static void inicio() throws SQLException, Exception{
		ojdbc = OracleJDBC.getInstance();
		
		INSERT_1 = "INSERT INTO COUNTRIES VALUES('"+CLAVE_1+"','"+TEXTO_1+"',"+REGION_1+")";
		
		int filas = ojdbc.ejecutar("DELECTE COUNTRIES WHERE COUNTRY_ID LIKE '@_'");
	}

	@AfterAll
	public static void fin() throws Exception{
		ojdbc.closeConnection();
	}

	@Test
	public void insertar() throws SQLException, Exception{
		int filas = ojdbc.ejecutar(INSERT_1);
		System.out.println("Registros afectados: "+filas);
		assertEquals(1, filas);
		
		ResultSet rs = ojdbc.ejecutarQuery(SELECT_COUNT+"COUNTRY_ID = '"+CLAVE_1+"'");
		assertEquals(1, rs.getInt(0));
		
		rs = ojdbc.ejecutarQuery(SELECT_G+"COUNTRY_ID = '"+CLAVE_1+"'");
		rs.next();
	}


	@Test
	public void listado() throws SQLException, Exception{
		int count = 0;
		ResultSet rs = ojdbc.ejecutarQuery(SELECT_G);
		while (rs.next()){
			count ++;
			System.out.println(rs.getString("COUNTRY_ID") + "\t");
			System.out.println((rs.getString("COUNTRY_NAME") + "      ".substring(0,30))+ "\t");
			System.out.println(rs.getString("REGION_ID") + "\t");
		}
		assertTrue(count>0);
	}

}

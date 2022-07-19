package es.rf.tienda.util;

import static org.junit.jupiter.api.Assertions.*;

import java.util.Calendar;

import org.junit.jupiter.api.Test;

class ValidatorTest {
	
	//Alfanumerico
	final String NOT_ALFANUMERIC = "jkhkhjk657675/&%/&%/?=)?)?cvx vcxcvxvc"; 
	final String ALFANUMERIC = "poiuytre wqasdf . hhhhh , ; -";
	
	//Codigo producto
	final String CODIGO_PRODUCTO_OK = "AB123";
	final String CODIGO_PRODUCTO_NO1 = "A123B";
	final String CODIGO_PRODUCTO_NO2 = "Ab123";
	final String CODIGO_PRODUCTO_NO3 = "A0123";
	final String CODIGO_PRODUCTO_FORMATO_ERR_NUM = "12345";
	final String CODIGO_PRODUCTO_FORMATO_ERR_ALF = "ABCDE";
	final String CODIGO_PRODUCTO_FORMATO_ERR_LON = "AB345678";
	
	//Vacio
	String STRING_NULA;
	final String STRING_VACIA = "";
	
	//Correo electronico
	final String CORREO_ELECTRONICO_CORRECTO = "migarcia@recursosformacion.com";
	final String CORREO_ELECTRONICO_ERRONEO_1 = "migarcia.recursosformacion.com";
	final String CORREO_ELECTRONICO_ERRONEO_2 = "migarcia@recursosformacion";
	
	//DNI
	final String NUMERO_DNI_OK = "12.345.678-Z"; 
	final String NUMERO_DNI_ERROR_LETRA = "12.345.678-A";
	final String NUMERO_DNI_ERROR_FORM_CORTO = "12.2.678-A";
	final String NUMERO_DNI_ERROR_FORM_CORTO2 = "122.678-A";
	final String NUMERO_DNI_ERROR_FORM_LARGO = "123.456.678-A";
	final String NUMERO_DNI_ERROR_FORM_ERR = "12345678A";
	final String NUMERO_DNI_ERROR_FORM_ERR2 = "12.345.678.A";
	
	//Cadena
	final String CADENA1 = "a";
	final String CADENA5 = "Ansde";
	final String CADENA20 = "asmdjfoeirksndvieqaz";
	final String CADENA30 = "qazxswedcvfrtgbnhyujm,kiol.-ñp";
	final String CADENA50 = "poiuytrewqasdfghjklñmnbvcxzZXCVBNMÑLKJHGFDSAQWERTY";
	
	//Telefono
	final String PHONENUMBER = "123456780";
	
	//Password
	final String PASSWORD_VALIDA = "123456780";

	//Rango
	final double VALOR = 50;
	final double VALOR_MAXIMO = 101;
	final double VALOR_MINIMO = 0;
	final int RANGO_MAXIMO = 100;
	final int RANGO_MINIMO = 1;
	
	//Fechas
	public static Calendar DIA_ACTUAL;
	public static Calendar DIA_ANTERIOR;
	public static Calendar DIA_POSTERIOR;
	
	static {
		Calendar aux = Calendar.getInstance();
		aux.add(Calendar.DAY_OF_YEAR, -1);
		DIA_ANTERIOR = aux;
		
		aux = Calendar.getInstance();
		aux.add(Calendar.DAY_OF_YEAR, +1);
		DIA_POSTERIOR = aux;
		
		DIA_ACTUAL = Calendar.getInstance();
	}
	
	@Test
	void testIsAlfanumericIS() {
		assertTrue(Validator.isAlfanumeric(ALFANUMERIC));
	}
	
	@Test
	void testIsAlfanumericNOT() {
		assertFalse(Validator.isAlfanumeric(NOT_ALFANUMERIC));
	}

	@Test
	void testIsVacio() {
		assertAll(
				() -> assertTrue(Validator.isVacio(STRING_NULA)),
				() -> assertTrue(Validator.isVacio(STRING_VACIA)),
				() -> assertFalse(Validator.isVacio(ALFANUMERIC)));
	}

	@Test
	void testCumplePhoneNumber() {
		fail("Not yet implemented");
	}

	@Test
	void testIsEmailValido() {
		assertAll(
				() -> assertTrue(Validator.isEmailValido(CORREO_ELECTRONICO_CORRECTO)),
				() -> assertFalse(Validator.isEmailValido(CORREO_ELECTRONICO_ERRONEO_1)),
				() -> assertFalse(Validator.isEmailValido(CORREO_ELECTRONICO_ERRONEO_2)));
	}

	@Test
	void testCumpleDNI() {
		assertAll(
				() -> assertTrue(Validator.cumpleDNI(NUMERO_DNI_OK)),
				() -> assertFalse(Validator.cumpleDNI(NUMERO_DNI_ERROR_LETRA)),
				() -> assertFalse(Validator.cumpleDNI(NUMERO_DNI_ERROR_FORM_CORTO)),
				() -> assertFalse(Validator.cumpleDNI(NUMERO_DNI_ERROR_FORM_CORTO2)),
				() -> assertFalse(Validator.cumpleDNI(NUMERO_DNI_ERROR_FORM_LARGO)),
				() -> assertFalse(Validator.cumpleDNI(NUMERO_DNI_ERROR_FORM_ERR)),
				() -> assertFalse(Validator.cumpleDNI(NUMERO_DNI_ERROR_FORM_ERR2)));
	}

	@Test
	void testCumpleRangoInt() {
		assertTrue(Validator.cumpleRango(VALOR,RANGO_MINIMO,RANGO_MAXIMO));
	}

	@Test
	void testCumpleRangoDouble() {
		assertTrue(Validator.cumpleRango(VALOR,RANGO_MINIMO,RANGO_MAXIMO));
	}

	/*@Test
	void testCumpleLongitudMin() {
		assertAll(
				() -> assertTrue(Validator.cumpleLongitudMin("A",3)),
				() -> assertFalse(Validator.cumpleLongitudMin("a",3)),
				() -> assertFalse(Validator.cumpleLongitudMin("a",3)));
	}

	@Test
	void testCumpleLongitudMax() {
		assertAll(
				() -> assertTrue(Validator.cumpleLongitudMax("a",3)),
				() -> assertFalse(Validator.cumpleLongitudMax("a",3)),
				() -> assertFalse(Validator.cumpleLongitudMax("a",3)));
	}

	@Test
	void testCumpleLongitud() {
		fail("Not yet implemented");
	}*/

	@Test
	void testValDateMin() {	//TODO: poner bien las constantes -> AÑO, MES, DÍA
		Calendar c1 = Calendar.getInstance();
		c1.set(RANGO_MAXIMO, RANGO_MINIMO, RANGO_MAXIMO);
		
		Calendar c2 = Calendar.getInstance();
		c2.set(RANGO_MAXIMO, RANGO_MINIMO, RANGO_MAXIMO);
		
		assertAll(
				() -> assertTrue(Validator.valDateMin(c2, c1)),
				() -> assertFalse(Validator.valDateMin(c1, c2)));
	}

	@Test
	void testValDateMax() { //TODO: poner bien las constantes -> AÑO, MES, DÍA
		Calendar c1 = Calendar.getInstance();
		c1.set(RANGO_MAXIMO, RANGO_MINIMO, RANGO_MAXIMO);
		
		Calendar c2 = Calendar.getInstance();
		c2.set(RANGO_MAXIMO, RANGO_MINIMO, RANGO_MAXIMO);
		
		assertAll(
				() -> assertTrue(Validator.valDateMax(c1, c2)),
				() -> assertFalse(Validator.valDateMax(c2, c1)));
	}

	@Test
	void testEsFechaValida() {
		fail("Not yet implemented");
	}

	@Test
	void testEsPasswordValida() {
		assertFalse(Validator.esPasswordValida("PASSWORD_VALIDA"));
	}

}

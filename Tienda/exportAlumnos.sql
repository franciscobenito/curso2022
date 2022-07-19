--------------------------------------------------------
-- Archivo creado  - sábado-julio-09-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CATEGORIA
--------------------------------------------------------

  CREATE TABLE "ALUMNO"."CATEGORIA" 
   (	"ID_CATEGORIA" NUMBER(*,0), 
	"CAT_NOMBRE" VARCHAR2(50 BYTE), 
	"CAT_DESCRIPCION" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLIENTE
--------------------------------------------------------

  CREATE TABLE "ALUMNO"."CLIENTE" 
   (	"ID_CLIENTE" NUMBER, 
	"CLI_NOMBRE" VARCHAR2(30 BYTE), 
	"CLI_DIRECCION" VARCHAR2(30 BYTE), 
	"CLI_POBLACION" VARCHAR2(100 BYTE), 
	"CLI_PROVINCIA" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DIRECCION
--------------------------------------------------------

  CREATE TABLE "ALUMNO"."DIRECCION" 
   (	"ID_DIRECCION" NUMBER, 
	"ID_CLIENTE" NUMBER, 
	"DIR_NOMBRE" VARCHAR2(30 BYTE), 
	"COLUMN1" VARCHAR2(30 BYTE), 
	"DIR_POBLACION" VARCHAR2(20 BYTE), 
	"DIR_CPOSTAL" VARCHAR2(5 BYTE), 
	"DIR_PROVINCIA" VARCHAR2(20 BYTE), 
	"DIR_PAIS" NUMBER, 
	"DIR_CORREOE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PAIS
--------------------------------------------------------

  CREATE TABLE "ALUMNO"."PAIS" 
   (	"ID_PAIS" NUMBER, 
	"PAIS_ISO" VARCHAR2(3 BYTE), 
	"PAIS_NOMBRE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCTO
--------------------------------------------------------

  CREATE TABLE "ALUMNO"."PRODUCTO" 
   (	"ID_PRODUCTO" VARCHAR2(5 BYTE), 
	"PRO_DESCRIPCION" VARCHAR2(100 BYTE), 
	"PRO_DESLARGA" VARCHAR2(2000 BYTE), 
	"PRO_PRECIO" NUMBER(3,2), 
	"PRO_STOCK" NUMBER(*,0), 
	"PRO_FECREPOS" DATE, 
	"PRO_FECACTI" DATE, 
	"PRO_FECDESACTI" DATE, 
	"PRO_UNIVENTA" VARCHAR2(20 BYTE), 
	"PRO_CANTXUNIVENTA" NUMBER(5,2), 
	"PRO_UNIULTNIVEL" VARCHAR2(20 BYTE), 
	"ID_PAIS" NUMBER(*,0), 
	"PRO_USORECOMENDADO" VARCHAR2(2000 BYTE), 
	"ID_CATEGORIA" NUMBER(*,0), 
	"PRO_STKRESERVADO" NUMBER(*,0), 
	"PRO_NSTKALTO" NUMBER(5,2), 
	"PRO_NSTKBAJO" NUMBER(5,2), 
	"PRO_STAT" CHAR(1 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "ALUMNO"."USUARIO" 
   (	"ID_USUARIO" NUMBER, 
	"COLUMN1" VARCHAR2(200 BYTE), 
	"COLUMN2" VARCHAR2(200 BYTE), 
	"COLUMN3" VARCHAR2(200 BYTE), 
	"COLUMN4" VARCHAR2(200 BYTE), 
	"COLUMN5" VARCHAR2(200 BYTE), 
	"COLUMN6" DATE, 
	"COLUMN7" DATE, 
	"COLUMN8" NUMBER, 
	"COLUMN9" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into ALUMNO.CATEGORIA
SET DEFINE OFF;
REM INSERTING into ALUMNO.CLIENTE
SET DEFINE OFF;
REM INSERTING into ALUMNO.DIRECCION
SET DEFINE OFF;
REM INSERTING into ALUMNO.PAIS
SET DEFINE OFF;
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('1','AF','Afganistán');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('2','AX','Islas Gland');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('3','AL','Albania');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('4','DE','Alemania');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('5','AD','Andorra');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('6','AO','Angola');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('7','AI','Anguilla');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('8','AQ','Antártida');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('9','AG','Antigua y Barbuda');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('10','AN','Antillas Holandesas');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('11','SA','Arabia Saudí');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('12','DZ','Argelia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('13','AR','Argentina');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('14','AM','Armenia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('15','AW','Aruba');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('16','AU','Australia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('17','AT','Austria');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('18','AZ','Azerbaiyán');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('19','BS','Bahamas');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('20','BH','Bahréin');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('21','BD','Bangladesh');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('22','BB','Barbados');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('23','BY','Bielorrusia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('24','BE','Bélgica');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('25','BZ','Belice');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('26','BJ','Benin');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('27','BM','Bermudas');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('28','BT','Bhután');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('29','BO','Bolivia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('30','BA','Bosnia y Herzegovina');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('31','BW','Botsuana');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('32','BV','Isla Bouvet');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('33','BR','Brasil');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('34','BN','Brunéi');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('35','BG','Bulgaria');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('36','BF','Burkina Faso');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('37','BI','Burundi');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('38','CV','Cabo Verde');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('39','KY','Islas Caimán');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('40','KH','Camboya');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('41','CM','Camerún');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('42','CA','Canadá');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('43','CF','República Centroafricana');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('44','TD','Chad');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('45','CZ','República Checa');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('46','CL','Chile');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('47','CN','China');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('48','CY','Chipre');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('49','CX','Isla de Navidad');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('50','VA','Ciudad del Vaticano');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('51','CC','Islas Cocos');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('52','CO','Colombia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('53','KM','Comoras');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('54','CD','República Democrática del Congo');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('55','CG','Congo');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('56','CK','Islas Cook');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('57','KP','Corea del Norte');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('58','KR','Corea del Sur');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('59','CI','Costa de Marfil');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('60','CR','Costa Rica');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('61','HR','Croacia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('62','CU','Cuba');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('63','DK','Dinamarca');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('64','DM','Dominica');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('65','DO','República Dominicana');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('66','EC','Ecuador');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('67','EG','Egipto');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('68','SV','El Salvador');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('69','AE','Emiratos Árabes Unidos');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('70','ER','Eritrea');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('71','SK','Eslovaquia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('72','SI','Eslovenia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('73','ES','España');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('74','UM','Islas ultramarinas de Estados Unidos');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('75','US','Estados Unidos');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('76','EE','Estonia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('77','ET','Etiopía');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('78','FO','Islas Feroe');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('79','PH','Filipinas');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('80','FI','Finlandia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('81','FJ','Fiyi');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('82','FR','Francia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('83','GA','Gabón');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('84','GM','Gambia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('85','GE','Georgia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('86','GS','Islas Georgias del Sur y Sandwich del Sur');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('87','GH','Ghana');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('88','GI','Gibraltar');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('89','GD','Granada');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('90','GR','Grecia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('91','GL','Groenlandia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('92','GP','Guadalupe');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('93','GU','Guam');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('94','GT','Guatemala');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('95','GF','Guayana Francesa');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('96','GN','Guinea');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('97','GQ','Guinea Ecuatorial');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('98','GW','Guinea-Bissau');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('99','GY','Guyana');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('100','HT','Haití');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('101','HM','Islas Heard y McDonald');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('102','HN','Honduras');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('103','HK','Hong Kong');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('104','HU','Hungría');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('105','IN','India');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('106','ID','Indonesia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('107','IR','Irán');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('108','IQ','Iraq');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('109','IE','Irlanda');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('110','IS','Islandia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('111','IL','Israel');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('112','IT','Italia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('113','JM','Jamaica');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('114','JP','Japón');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('115','JO','Jordania');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('116','KZ','Kazajstán');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('117','KE','Kenia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('118','KG','Kirguistán');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('119','KI','Kiribati');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('120','KW','Kuwait');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('121','LA','Laos');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('122','LS','Lesotho');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('123','LV','Letonia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('124','LB','Líbano');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('125','LR','Liberia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('126','LY','Libia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('127','LI','Liechtenstein');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('128','LT','Lituania');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('129','LU','Luxemburgo');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('130','MO','Macao');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('131','MK','ARY Macedonia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('132','MG','Madagascar');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('133','MY','Malasia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('134','MW','Malawi');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('135','MV','Maldivas');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('136','ML','Malí');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('137','MT','Malta');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('138','FK','Islas Malvinas');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('139','MP','Islas Marianas del Norte');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('140','MA','Marruecos');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('141','MH','Islas Marshall');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('142','MQ','Martinica');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('143','MU','Mauricio');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('144','MR','Mauritania');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('145','YT','Mayotte');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('146','MX','México');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('147','FM','Micronesia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('148','MD','Moldavia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('149','MC','Mónaco');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('150','MN','Mongolia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('151','MS','Montserrat');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('152','MZ','Mozambique');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('153','MM','Myanmar');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('154','NA','Namibia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('155','NR','Nauru');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('156','NP','Nepal');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('157','NI','Nicaragua');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('158','NE','Níger');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('159','NG','Nigeria');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('160','NU','Niue');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('161','NF','Isla Norfolk');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('162','NO','Noruega');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('163','NC','Nueva Caledonia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('164','NZ','Nueva Zelanda');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('165','OM','Omán');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('166','NL','Países Bajos');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('167','PK','Pakistán');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('168','PW','Palau');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('169','PS','Palestina');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('170','PA','Panamá');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('171','PG','Papúa Nueva Guinea');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('172','PY','Paraguay');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('173','PE','Perú');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('174','PN','Islas Pitcairn');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('175','PF','Polinesia Francesa');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('176','PL','Polonia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('177','PT','Portugal');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('178','PR','Puerto Rico');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('179','QA','Qatar');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('180','GB','Reino Unido');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('181','RE','Reunión');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('182','RW','Ruanda');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('183','RO','Rumania');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('184','RU','Rusia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('185','EH','Sahara Occidental');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('186','SB','Islas Salomón');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('187','WS','Samoa');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('188','AS','Samoa Americana');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('189','KN','San Cristóbal y Nevis');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('190','SM','San Marino');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('191','PM','San Pedro y Miquelón');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('192','VC','San Vicente y las Granadinas');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('193','SH','Santa Helena');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('194','LC','Santa Lucía');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('195','ST','Santo Tomé y Príncipe');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('196','SN','Senegal');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('197','CS','Serbia y Montenegro');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('198','SC','Seychelles');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('199','SL','Sierra Leona');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('200','SG','Singapur');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('201','SY','Siria');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('202','SO','Somalia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('203','LK','Sri Lanka');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('204','SZ','Suazilandia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('205','ZA','Sudáfrica');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('206','SD','Sudán');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('207','SE','Suecia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('208','CH','Suiza');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('209','SR','Surinam');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('210','SJ','Svalbard y Jan Mayen');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('211','TH','Tailandia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('212','TW','Taiwán');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('213','TZ','Tanzania');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('214','TJ','Tayikistán');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('215','IO','Territorio Británico del Océano Índico');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('216','TF','Territorios Australes Franceses');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('217','TL','Timor Oriental');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('218','TG','Togo');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('219','TK','Tokelau');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('220','TO','Tonga');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('221','TT','Trinidad y Tobago');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('222','TN','Túnez');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('223','TC','Islas Turcas y Caicos');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('224','TM','Turkmenistán');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('225','TR','Turquía');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('226','TV','Tuvalu');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('227','UA','Ucrania');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('228','UG','Uganda');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('229','UY','Uruguay');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('230','UZ','Uzbekistán');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('231','VU','Vanuatu');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('232','VE','Venezuela');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('233','VN','Vietnam');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('234','VG','Islas Vírgenes Británicas');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('235','VI','Islas Vírgenes de los Estados Unidos');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('236','WF','Wallis y Futuna');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('237','YE','Yemen');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('238','DJ','Yibuti');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('239','ZM','Zambia');
Insert into ALUMNO.PAIS (ID_PAIS,PAIS_ISO,PAIS_NOMBRE) values ('240','ZW','Zimbabue');
REM INSERTING into ALUMNO.PRODUCTO
SET DEFINE OFF;
REM INSERTING into ALUMNO.USUARIO
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index CATEGORIAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNO"."CATEGORIAS_PK" ON "ALUMNO"."CATEGORIA" ("ID_CATEGORIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNO"."CLIENTE_PK" ON "ALUMNO"."CLIENTE" ("ID_CLIENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DIRECCION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNO"."DIRECCION_PK" ON "ALUMNO"."DIRECCION" ("ID_DIRECCION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PAIS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNO"."PAIS_PK" ON "ALUMNO"."PAIS" ("ID_PAIS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNO"."PRODUCTOS_PK" ON "ALUMNO"."PRODUCTO" ("ID_PRODUCTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNO"."USUARIO_PK" ON "ALUMNO"."USUARIO" ("ID_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRO_ID_CATEGORIA
--------------------------------------------------------

  CREATE INDEX "ALUMNO"."PRO_ID_CATEGORIA" ON "ALUMNO"."PRODUCTO" ("ID_CATEGORIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRO_IDPAIS
--------------------------------------------------------

  CREATE INDEX "ALUMNO"."PRO_IDPAIS" ON "ALUMNO"."PRODUCTO" ("ID_PAIS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PRODUCTO
--------------------------------------------------------

  ALTER TABLE "ALUMNO"."PRODUCTO" MODIFY ("ID_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNO"."PRODUCTO" MODIFY ("PRO_DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "ALUMNO"."PRODUCTO" ADD CONSTRAINT "PRODUCTOS_PK" PRIMARY KEY ("ID_PRODUCTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAIS
--------------------------------------------------------

  ALTER TABLE "ALUMNO"."PAIS" MODIFY ("ID_PAIS" NOT NULL ENABLE);
  ALTER TABLE "ALUMNO"."PAIS" ADD CONSTRAINT "PAIS_PK" PRIMARY KEY ("ID_PAIS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "ALUMNO"."CLIENTE" MODIFY ("ID_CLIENTE" NOT NULL ENABLE);
  ALTER TABLE "ALUMNO"."CLIENTE" ADD CONSTRAINT "CLIENTE_PK" PRIMARY KEY ("ID_CLIENTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIRECCION
--------------------------------------------------------

  ALTER TABLE "ALUMNO"."DIRECCION" MODIFY ("ID_DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "ALUMNO"."DIRECCION" MODIFY ("ID_CLIENTE" NOT NULL ENABLE);
  ALTER TABLE "ALUMNO"."DIRECCION" ADD CONSTRAINT "DIRECCION_PK" PRIMARY KEY ("ID_DIRECCION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "ALUMNO"."USUARIO" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNO"."USUARIO" ADD CONSTRAINT "USUARIO_PK" PRIMARY KEY ("ID_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORIA
--------------------------------------------------------

  ALTER TABLE "ALUMNO"."CATEGORIA" MODIFY ("ID_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNO"."CATEGORIA" ADD CONSTRAINT "CATEGORIAS_PK" PRIMARY KEY ("ID_CATEGORIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;

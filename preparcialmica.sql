--1 Que es una clave primaria ?
--2  Que es un tipo de dato ?
--3 Que es informacion. Diferencia con Datos ?
--4 Arma una estructura de base de datos de una ferreteria con las tablas indices y realice dos consultas DDL y DML

---- Respuestas:
--1:Una clave primaria es una clave que contiene todas las tablas, es una clave que reconoce las columnas
-- de tipo numerica que suelen ser las "id", debe ser ordenada y no tienen que repetirse los datos. 
--2: Los tipos de datos definen los valores y sus tipos que se guardan en las columnas dentro de las tablas,
-- en caso de que sean numeros seria un tipo de dato "numerico", si es un texto suele se "varchar" para definir la longitud del texto, si es
-- verdadero o falso se llama dato "booleano" y si es un horario o un dia se lo llama "fecha". 
--3: La informacion son los conjuntos de datos de forma ordenada y con contexto, la informacion son todos los datos ingresados en la tabla como
--un conjunto. La informacion es lo que tenemos una vez sean ordenados los datos. 
--4: Ferreteria = 

CREATE DATABASE (
    FERRETERIA_MICA
);

CREATE TABLE PRODUCTOS(
  PRO_ID NUMBER NOT NULL, 
  PRO_NOMBRES VARCHAR (200), 
  PRO_PRECIOS NUMBER, 
  PRO_SDF_ID NUMBER
); 

ALTER TABLE PRODUCTOS(
    ADD CONSTRAINT PK_PRO_ID PRIMARY KEY (PRO_ID),
    FOREIGN KEY PRO_SDF_ID REFERENCES SUCURSALES_DE_FERRETERIA
);

CREATE TABLE SUCURSALES_DE_FERRETERIA(
    SDF_ID NUMBER NOT NULL, 
    SDF_NOMBRE VARCHAR (200), 
    SDF_STOCK NUMBER
);

ALTER TABLE SUCURSALES_DE_FERRETERIA(
    ADD CONSTRAINT PK_SDF_ID PRIMARY KEY (SDF_ID)
); 

INSERT INTO PRODUCTOS (PRO_ID, PRO_NOMBRES, PRO_PRECIOS, PRO_SDF_ID)
               VALUES (1, "Destornillador", 5700, 2); 

INSERT INTO PRODUCTOS (PRO_ID, PRO_NOMBRES, PRO_PRECIOS, PRO_SDF_ID)
               VALUES (2, "Cinta aislante", 900, 1); 

INSERT INTO PRODUCTOS (PRO_ID, PRO_NOMBRES, PRO_PRECIOS, PRO_SDF_ID)
               VALUES (3, "Martillo", 6000, 3); 


ALTER TABLE SUCURSALES_DE_FERRETERIA DROP COLUMN SDF_STOCK;


INSERT INTO SUCURSALES_DE_FERRETERIA (SDF_ID, SDF_NOMBRE)
               VALUES (1, "Central"); 
 
INSERT INTO SUCURSALES_DE_FERRETERIA (SDF_ID, SDF_NOMBRE)
               VALUES (2, "Belgrano"); 

INSERT INTO SUCURSALES_DE_FERRETERIA (SDF_ID, SDF_NOMBRE)
               VALUES (3, "Bolivar"); 


SELECT * FROM PRODUCTOS;

SELECT PRO_PRECIO FROM PRODUCTOS WHERE ID = 2; 

DELETE FROM SUCURSALES_DE_FERRETERIA WHERE ID = 2; 
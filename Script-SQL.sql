-- Creacion de base de datos sql 
-- Sentencia DML 
CREATE DATABASE VENTA_DE_ROPA;

-- Usar base de datos
USE VENTA_DE_ROPA;

CREATE TABLE VENTA_DE_ROPA(
    VDR_ID NUMBER not null
    VDR_NOMBRE VARCHAR(100) 
    VDR_PRECIO NUMBER
);
ALTER TABLE VENTA_DE_ROPA(
    ADD CONSTRAINT PK_VDR_ID PRIMARY KEY (VDR_ID)
);

CREATE TABLE STOCK(
 STO_ID NUMBER not null,
 STO_CANT number
 STO_VDR_ID number
);

ALTER TABLE STOCKS(
    PRIMARY KEY (STO_ID)
     FOREIGN KEY (STO_VDR_ID) REFENCE VENTA_DE_ROPA(VDR_ID) 
);

--Sentencia DDL 
INSERT INTO VDR ( VDR_ID,VDR_NOMBRE,VDR_PRECIO)
  VALUES (1,`jeens`,20.000 );

INSERT INTO VDR ( VDR_ID,VDR_NOMBRE,VDR_PRECIO)
  VALUES (2,`remera`,15.000 );

INSERT INTO VDR ( VDR_ID,VDR_NOMBRE,VDR_PRECIO)
  VALUES (3`CAMPERA`,35.000 );
 
INSERT INTO STOCK( STO_ID,STO_CAN,STO_VDR_ID) 
 VALUES (`1`,25,1);

INSERT INTO STOCK( STO_ID,STO_CAN,STO_VDR_ID)
  VALUES (`2`,10,2 );

INSERT INTO STOCK( STO_ID,STO_CAN,STO_VDR_ID)
 VALUES (`3`,5,3 );



-- Sentencia DDL 
SELECT (*) FROM VENTA_DE_ROPA 

SELECT VDR_NOMBRE
FROM VENTA_DE_ROPA
WHERE VDR_ID = 2 ; 

SELECT STO_CANT AS Cantidad, VDR_NOMBRE AS Prendas
FROM STOCKS 
JOIN VENTA_DE_ROPA ON STO_VDR_ID = VDR_ID 


DROP TABLE USUARIOS;
CREATE TABLE USUARIOS (
	ID_USUARIOS INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    NOMBRE VARCHAR (40) NOT NULL,
    CORREO VARCHAR (40) NOT NULL,
    DIRECCION VARCHAR (40) NOT NULL,
    TELEFONO VARCHAR (40) NOT NULL,
	PRIMARY KEY (ID_USUARIOS)
);

DROP TABLE PRODUCTOS;
CREATE TABLE PRODUCTOS (
	ID_PRODUCTOS INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    NOMBRE VARCHAR (40) NOT NULL,
    CLAVE VARCHAR (15) NOT NULL,
    CODIGO VARCHAR (40) NOT NULL,
    PRECIO FLOAT NOT NULL,
	PRIMARY KEY (ID_PRODUCTOS),
	FOREIGN KEY (ID_PROVEDORES) REFERENCES PROVEDORES (ID_PROVEDORES),
	FOREIGN KEY (ID_CATEGORIAS) REFERENCES CATEGORIAS (ID_CATEGORIAS)

);

DROP TABLE PROVEDORES;
CREATE TABLE PROVEDORES (
	ID_PROVEDORES INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    NOMBRE VARCHAR (40) NOT NULL,
    CORREO VARCHAR (40) NOT NULL,
    DIRECCION VARCHAR (40),
    TELEFONO VARCHAR (40),
	PRIMARY KEY (ID_PROVEDORES)
);

DROP TABLE CATEGORIAS;
CREATE TABLE CATEGORIAS (
	ID_CATEGORIAS INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    NOMBRE VARCHAR (40) NOT NULL,
    CLAVE VARCHAR (15),
	PRIMARY KEY (ID_CATEGORIAS)
);

DROP TABLE COMPRAS;
CREATE TABLE COMPRAS(
	ID_COMPRAS INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    FECHA DATETIME,
    TOTAL FLOAT NOT NULL,
	PRIMARY KEY (ID_COMPRAS),
	FOREIGN KEY (ID_PRODUCTOS) REFERENCES PRODUCTOS(ID_PRODUCTOS),
	FOREIGN KEY (ID_USUARIOS) REFERENCES USUARIOS(ID_USUARIOS)

);





























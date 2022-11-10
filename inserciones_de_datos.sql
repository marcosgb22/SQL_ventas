

INSERT INTO `USUARIOS` (`ID_USUARIOS`,`NOMBRE`,`CORREO`,`DIRECCION`,`TELEFONO`)
VALUES
  (1,"Daryl Garrett","in@protonmail.couk","Ap #425-3654 Mi Rd.","1-947-194-5578"),
  (2,"Richard Benson","lorem.semper@aol.org","Ap #208-7599 Cursus Ave","1-425-544-5854"),
  (3,"Hyatt Mcguire","nec.tempus.mauris@yahoo.net","651-7415 Libero Av.","(617) 359-2275"),
  (4,"Damian Berger","integer.id.magna@aol.couk","Ap #831-8140 Mauris Street","(514) 448-1863"),
  (5,"Nayda Morrison","feugiat.metus@google.com","Ap #247-664 Tellus. St.","1-133-426-3642");


INSERT INTO `CATEGORIAS` (`ID_CATEGORIA`,`NOMBRE`,`CLAVE`)
VALUES
  (1,"otros","otros"),
  (2,"fisico","fis"),
  (3,"intangible","int"),
  (4,"farmaco","farmaco"),
  (5,"sin categoria","sin cat");

INSERT INTO `PROVEDORES` (`ID_PROVEDORES`,`NOMBRE`,`CORREO`,`DIRECCION`,`TELEFONO`)
VALUES
  (1, "MONSTER" ,"cras.vehicula@aol.net","P.O. Box 794, 2984 Aenean Road","(265) 322-8785"),
  (2, "ICARO" ,"scelerisque.neque@google.com","P.O. Box 291, 8705 Sed Rd.","1-232-406-9338"),
  (3, "PERSEO" ,"sit@hotmail.ca","Ap #877-4984 Et St.","(744) 616-5279"),
  (4, "POWERADE" ,"proin.ultrices@google.couk","883-1903 Nec, St.","(879) 275-5456"),
  (5, "ENERGY" ,"egestas.sed@aol.couk","380-5481 Lacus. Ave","(751) 265-8444");
  
  
INSERT INTO `PRODUCTOS` (`ID_PRODUCTOS`,`NOMBRE`,`CLAVE`,`CODIGO`,`PRECIO`, `ID_CATEGORIAS`, `ID_PROVEDORES` )
VALUES
  (1,"Ullamcorper Foundation","",3015,72,1,1),
  (2,"Amet Ante LLC","",9407,36,2,2),
  (3,"Massa Company","",7052,46,1,2),
  (4,"Nulla Corp.","",8039,65,1,2),
  (5,"Gravida LLC","",2592,65,1,2);

INSERT INTO `COMPRAS` (`ID_COMPRAS`,`FECHA`,`TOTAL`,`ID_PRODUCTOS`,`ID_USUARIOS`)
VALUES
  (1,"Aug 30, 2022",72,1,2),
  (2,"Jul 15, 2023",36,2,3),
  (3,"Jan 21, 2023",46,3,2),
  (4,"Jul 7, 2022",65,4,3),
  (5,"Apr 7, 2022",65,5,1);
  
  
  
  
  

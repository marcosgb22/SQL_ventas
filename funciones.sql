
CREATE FUNCTION COMPRAS_USUARIO
(@USUARIO AS VARCHAR (30))
  RETURN TABLE
AS
 RETURN(SELECT USUARIO.NOMBRE AS NOMBRE , PRODUCTOS.NOMBRE AS NOMBRE FROM USUARIO USUARIO INNER JOIN PRODUCTOS PRODUCTOS
       WHERE USUARIO.NOMBRE = @USUARIO)
       
SELECT * FROM COMPRAS_USUARIO('Daryl Garrett')

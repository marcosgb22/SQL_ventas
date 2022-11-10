

use VENTAS;

select * from USUARIOS
order by NOMBRES desc;
drop procedure if exists BACKUP
delimiter //
create procedure BACKUP  (
				 INOUT p_order varchar (50),
                                 INOUT p_asc_desc varchar (50))								 
begin
	
    select * from USUARIOS
			 order by  @p_order, @p_asc_desc;  
end //
delimiter ; 


-- busca productos por rango de precio



DELIMITER //
CREATE PROCEDURE productos_precios
(IN palabra CHAR(20))
BEGIN
  SELECT COUNT(*) FROM PRODUCTOS
  WHERE PRECIO >= palabra;
END //
DELIMITER ; 

CALL productos_precios('españa');


-- lista total de productos

DELIMITER //
CREATE PROCEDURE total_productos
(OUT total INTEGER)
BEGIN
    SELECT COUNT(*) INTO total FROM PRODUCTOS
END //
DELIMITER;

SET @total = 0;
CALL total_paises( @total );
SELECT @total;








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

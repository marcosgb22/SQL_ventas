

use eleccionesmgp_bckp;

select * from circuito_bckp
order by inscriptos_bckp desc;
 
drop procedure if exists sp_Circuitos_bckp1
delimiter //

create procedure sp_Circuitos_bckp1  (
								 INOUT p_order varchar (50),
                                 INOUT p_asc_desc varchar (50))
                                 
								 
begin
	
    select * from circuito_bckp
			 order by  @p_order, @p_asc_desc;



  
end //
delimiter ; 

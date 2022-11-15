
-- creacionde usuarios , operacion y editor con diferentes permisos

create user operacion@localhost identified by 'passoperacion';

grant select on `USUARIOS` to 'operacion@localhost';
grant select on `CATEGORIAS` to 'operacion@localhost';
grant select on `PROVEDORES` to 'operacion@localhost';
grant select on `PRODUCTOS` to 'operacion@localhost';
grant select on `COMPRAS` to 'operacion@localhost';

create user editor@localhost identified by 'passeditor';

grant select, update, insert on `USUARIOS` to 'editor@localhost';
grant select, update, insert on `CATEGORIAS` to 'editor@localhost';
grant select, update, insert on `PROVEDORES` to 'editor@localhost';
grant select, update, insert on `PRODUCTOS` to 'editor@localhost';
grant select, update, insert on `COMPRAS` to 'editor@localhost';

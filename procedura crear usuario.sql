delimiter //
use stom_gamestore;
create procedure CrearUsuario(
in Nombreusuario varchar(20),in correo varchar(50)
)
begin 
insert into 
Usuarios( NombreUser , CorreoUser)
values (Nombreusuario, correo )  
;
end; 

delimeter //

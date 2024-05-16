delimiter //
use stom_gamestore;
create procedure CrearPublisher (
in nombre varchar(30),in correo varchar(50),in cuentaBanco int 
)
begin 
insert into Publisher(NombrePublisher,CorreoPublisher,Num_CuentaBanco )
values (nombre,correo,cuentaBanco);
end ;
delimiter //

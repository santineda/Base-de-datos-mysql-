delimiter //
use stom_gamestore;

create procedure Dlc ( in dlc int,in nombre varchar(50),in precio float,
in fecha date, in juego int, in publisherid int  
)
begin
insert into DLCs (ID_DLC,NombreDLC,precioDLC,FechaPublicacion,IDJuego,IDPublisher)
values (dlc,nombre,precio,fecha,juego,publisherid);
end //
delimiter ;
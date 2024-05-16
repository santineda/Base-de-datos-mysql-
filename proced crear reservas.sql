delimiter //
use stom_gamestore;
 create procedure Reservas(in ID int, in iduser int, id_juego  int,
 in id_dlc int, in precio float)
 begin 
 insert into Reservas(IDReserva ,IDUser ,IDJuegoReser ,ID_DLC_reserva ,
PrecioReserva) 
values (ID , iduser, id_juego, id_dlc, precio );
end //
delimiter //
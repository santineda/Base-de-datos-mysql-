delimiter //

USE stom_gamestore;
Create procedure buscarJuego(in juegoID INT)
BEGIN
    select from  Juegos WHERE IDJuego = juegoID;
END //

delimiter ;

delimiter //

USE stom_gamestore;
Create procedure EliminarJuego(in juegoID INT)
BEGIN
    DELETE from Juegos WHERE IDJuego = juegoID;
END //

delimiter ;

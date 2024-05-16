DELIMITER //
USE stom_gamestore;

CREATE PROCEDURE crearJuego (
    IN idJuego INT,IN Nombre VARCHAR(50),IN Fecha DATE,IN Precio FLOAT,IN Publisher INT
    )
BEGIN
    INSERT INTO Juegos (IDJuego, NombreJuego, FechaPublicacion, Precio, IDPublisher)
    VALUES (idJuego, Nombre, Fecha, Precio, Publisher);
END //

DELIMITER ;

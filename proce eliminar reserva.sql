DELIMITER //

USE stom_gamestore;

CREATE PROCEDURE EliminarReservaPorID(IN reservaID INT)
BEGIN
    DELETE FROM Reservas WHERE IDReserva = reservaID;
END //

DELIMITER ;

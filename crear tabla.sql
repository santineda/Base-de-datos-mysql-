drop database if exists Stom_gamestore;
create database Stom_gamestore;
use stom_gamestore;
Drop table if exists Usuarios;
create table Usuarios(
IDUser int auto_increment primary Key,
NombreUser varchar(20) Not null,
CorreoUser varchar(50) not null
);
drop table if exists Publisher;
create table Publisher(
IDPublisher int auto_increment primary key,
NombrePublisher varchar(30) not null,
CorreoPublisher varchar(50) not null,
Num_CuentaBanco int not null
); 
drop table if exists Juegos;
create table Juegos(
IDJuego int auto_increment primary key,
NombreJuego varchar(50) not null,
FechaPublicacion date not null,
Categoria varchar(50) not null,
Precio float not null,
IDPublisher int not null,
foreign key (IDPublisher) references Publisher(IDPublisher)   
); 
drop table if exists DLCs;
create table DLCs(
ID_DLC int auto_increment primary key,
NombreDLC varchar(50) not null,
precioDLC varchar(50) not null,
FechaPublicacion date not null,
IDJuego int not null,
IDPublisher int not null,
foreign key (IDJuego) references Juegos(IDJuego),
foreign key (IDPublisher) references Publisher(IDPublisher)     
);
drop table if exists Reservas;
create table Reservas(
IDReserva int auto_increment primary key,
IDUser int not null,
IDJuegoReser int not null,
ID_DLC_reserva int,
PrecioReserva float not null,
foreign key (ID_DLC_reserva) references DLCs(ID_DLC),
foreign key (IDJuegoReser) references Juegos(IDJuego),
foreign key (IDUser) references Usuarios(IDUser) 
);

drop table if exists Biblioteca;
create table Biblioteca(
NumBiblio int auto_increment primary key,
IDUser int not null,
IDJuego int,
ID_DLC int ,
foreign key (ID_DLC) references DLCs(ID_DLC),
foreign key (IDJuego) references Juegos(IDJuego),
foreign key (IDUser) references Usuarios(IDUser) 
);

drop table if exists ListaDeseados;
create table ListaDeseados(
IDLista int auto_increment primary key,
IDUser int not null,
IDJuego int,
ID_DLC int ,
foreign key (ID_DLC) references DLCs(ID_DLC),
foreign key (IDJuego) references Juegos(IDJuego),
foreign key (IDUser) references Usuarios(IDUser) 
);
delimiter //

Create procedure BuscarUser(in userID INT)
BEGIN
    select * from Usuarios WHERE IDUser = userID;
END //

delimiter ;
delimiter //

Create procedure buscarJuego(in juegoID INT)
BEGIN
    select * from  Juegos WHERE IDJuego = juegoID;
END //

delimiter ;

delimiter //
Create procedure Bucarpublisher(in publisherID INT)
BEGIN
    select * from Publisher WHERE IDPublisher = publisherID;
END //

delimiter ;
delimiter //

Create procedure buscarDlc(in dlcID INT)
BEGIN
    select * from  DLCs WHERE ID_DLC = dlcID;
END //

delimiter ;

delimiter //

Create procedure EliminarJuego(in juegoID INT)
BEGIN
    DELETE from Juegos WHERE IDJuego = juegoID;
END //

delimiter ;
delimiter //

create procedure CrearDlc ( in dlc int,in nombre varchar(50),in precio float,
in fecha date, in juego int, in publisherid int  
)
begin
insert into DLCs (ID_DLC,NombreDLC,precioDLC,FechaPublicacion,IDJuego,IDPublisher)
values (dlc,nombre,precio,fecha,juego,publisherid);
end //
delimiter ;

delimiter //
create procedure CrearUsuario(in Nombreusuario varchar(20),
in correo varchar(50))
begin 
insert into 
Usuarios( NombreUser , CorreoUser)
values (Nombreusuario ,correo )  ;
end; 

delimeter ;

delimiter //

 create procedure CrearReservas(in ID int, in iduser int, id_juego  int,
 in id_dlc int, in precio float)
 begin 
 insert into Reservas(IDReserva ,IDUser ,IDJuegoReser ,ID_DLC_reserva ,
PrecioReserva) 
values (ID , iduser, id_juego, id_dlc, precio );
end //
delimiter //

delimiter //

Create procedure EliminarUser(in userID INT)
BEGIN
    DELETE from Usuarios WHERE IDUser = userID;
END //

delimiter ;

delimiter //

Create procedure EliminarPublisher(in publisherID INT)
BEGIN
    DELETE from Publisher WHERE IDPublisher = publisherID;
END //

delimiter ;

delimiter //

Create procedure Eliminardlc(in dlcID INT)
BEGIN
    DELETE from DLCs WHERE ID_DLC = dlcID;
END //

delimiter ;

delimiter //

Create procedure buscarReserva(in reservaID INT)
BEGIN
    select * from  Reservas WHERE IDReserva = reservaID;
END //

delimiter ;

DELIMITER //


CREATE PROCEDURE ComprarJuego (IN juegoCom INT, IN PerID INT)
BEGIN
    DECLARE juegoExist INT;

     SELECT COUNT(*) INTO juegoExist 
    FROM Juegos 
    WHERE IDJuego = juegoCom AND IDUser = PerID;

     IF juegoExist > 0 THEN
        INSERT INTO Biblioteca (IDUser, IDJuego) VALUES (PerID, juegoCom);
    END IF;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE InsertarJuego(IN p_NombreJuego VARCHAR(50),
    IN p_FechaPublicacion DATE,IN p_Categoria VARCHAR(50),
    IN p_Precio FLOAT,IN p_IDPublisher INT)
BEGIN
    INSERT INTO Juegos (NombreJuego, FechaPublicacion, Categoria, Precio, IDPublisher)
    VALUES (p_NombreJuego, p_FechaPublicacion, p_Categoria, p_Precio, p_IDPublisher);
END//

DELIMITER ;

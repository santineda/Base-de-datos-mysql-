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

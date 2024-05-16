USE stom_gamestore;
INSERT INTO Usuarios (NombreUser,CorreoUser)
VALUES  ("Raya Bennett","sagittis.semper@protonmail.couk"),
  ("Barbara Hanson","fringilla.purus@protonmail.ca"),
  ("Isaac Duran","lectus.convallis@outlook.com"),
  ("Thor Glenn","massa.lobortis@outlook.couk"),
  ("Yoko Turner","dignissim@aol.org"),
  ("Chandler Wiggins","tincidunt.tempus@icloud.net"),
  ("Tanya Butler","aliquet.odio.etiam@protonmail.couk"),
  ("Darrel Duffy","parturient.montes@icloud.net"),
  ("Yardley Christensen","eleifend.egestas.sed@outlook.edu"),
  ("Germaine Sweeney","consequat.auctor@yahoo.couk"),
  ("Jane Ramos","urna@google.couk"),
  ("Bruno Patton","maecenas.libero@protonmail.com"),
  ("Damian Chambers","sem.semper@hotmail.edu"),
  ("Logan Conner","mi.lacinia.mattis@google.net"),
  ("Ciaran Blevins","sagittis@protonmail.ca"),
  ("Gil O'Neill","in.ornare@hotmail.edu"),
  ("Allen Macdonald","pharetra@outlook.com"),
  ("Gareth Salinas","volutpat@protonmail.couk"),
  ("Gannon Rutledge","venenatis.a.magna@icloud.edu"),
  ("Katelyn Lewis","dolor.dolor.tempus@google.org"),
  ("Gregory Herman","donec.nibh@hotmail.org"),
  ("Ishmael Rodgers","elementum.at@google.com"),
  ("Ocean Solomon","eget.dictum.placerat@protonmail.edu"),
  ("Kenyon Collins","in@google.ca"),
  ("Darius Glass","morbi.tristique@outlook.org"),
  ("Mallory Reilly","sed@icloud.com"),
  ("Bree Hunt","molestie.sed@yahoo.couk"),
  ("Scott Wong","curabitur@hotmail.ca"),
  ("Conan Valencia","vestibulum.ante@google.ca"),
  ("Ginger Small","pede@google.couk");

Insert into Publisher( NombrePublisher ,CorreoPublisher ,Num_CuentaBanco )
values ("nantendo","nantendo@gmail.com","1223562"),
  ("ybox","ybox@otlook.com","1232657"),
  ("gamestation","gamestation@gmailcom","2145688"),
  ("toSoftware","toSoftare@gmailcom","78962148"),
  ("circlenix","circlenix@gmailcom","709902148"),
  ("worthesda","worthesda@gmailcom","120902138");

insert into Juegos (NombreJuego ,FechaPublicacion ,Precio ,IDPublisher)
values("dark minds","2021-12-15","150000","79"),
("fallin 3","2020-06-02","100000","80"),
("nario bros","2023-4-15","60000","81"),
("call of honor","2024-12-15","160000","82"),
("lies of me","2023-06-10","150000","79"),
("the last of theirs","2020-12-15","170000","83"),
("Another game IX","2023-12-15","200000","85"),
("the last of theirs remaster ","2021-06-15","200000","83"),
("dark minds","2021-12-15","150000","79");

  Insert into DLCs(NombreDLC,precioDLC,FechaPublicacion,IDJuego ,IDPublisher)
  values("nada","0","0001-1-1","1","79"),
  ("ashes to ashes","25000","2020-02-10","1","81"),
  ("betweenlands","30000","2021-12-20","2","81"),
    ("shadow lands","50000","2019-02-10","3","82"),
    ("londsom road","10000","2010-02-10","4","82"),
("old war songs","10000","2010-03-15","4","82");

insert into reservas (IDUser,IDJuegoReser ,ID_DLC_reserva,PrecioReserva)
values("5","3","1","150000"),
("3","5","1","150000"),
("10","7","1","200000");

INSERT INTO artist 
(Id_artist, first_name, last_name, pseudo, biography, email, pasword, date_of_birth)
VALUES
(1, 'Alexandra', 'Galian', 'Alex', 'Une cousine incroyable', 'alex@gmail.com', 'pwd', '2002-02-05');

INSERT INTO art 
(Id_art, image, arrt_name)
VALUES
(1, '{}', 'moi' ),
(2, '{}', 'toi');

INSERT INTO visiteur 
(Id_Visiteur, first_name, last_name, pseudo, email, pasword)
VALUES
(1, 'Luis', 'Alba SANCHEZ', 'luisito', 'luis@gmail.com', 'pwd');

INSERT INTO autor 
(Id_artist, Id_art)
VALUES
(1, 1),
(1, 2);

INSERT INTO favori 
(Id_art, Id_Visiteur)
VALUES
(1, 1);
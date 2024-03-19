
-- Inserarea datelor în tabela 'restaurant'
INSERT INTO restaurant VALUES (1, 'La Mare', 'Strada Oceanelor 10');
INSERT INTO restaurant VALUES (2, 'La Pădure', 'Bulevardul Copacilor 5');
INSERT INTO restaurant VALUES (3, 'Urban Grill', 'Aleea Grătarului 3');
INSERT INTO restaurant VALUES (4, 'Casa Bunicii', 'Strada Amintirilor 8');
INSERT INTO restaurant VALUES (5, 'Bistro Moderne', 'Strada Inovației 1');

-- Inserarea datelor în tabela 'angajat'
INSERT INTO angajat VALUES (1, 1, 'Ion Popescu', 'Chelner',sysdate);
INSERT INTO angajat VALUES (2, 1, 'Ana Maria', 'Bucătar', TO_DATE('2018-02-08', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (3, 1, 'Cristi Serban', 'Manager', TO_DATE('2016-03-09', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (4, 1, 'Maria Pop', 'Chelner', TO_DATE('2019-04-10', 'YYYY-MM-DD'));

INSERT INTO angajat VALUES (5, 2, 'Vlad Ionescu', 'Chelner', TO_DATE('2017-01-11', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (6, 2, 'George Vasile', 'Manager', TO_DATE('2015-06-22', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (7, 2, 'Andreea Popescu', 'Bucătar', TO_DATE('2019-04-03', 'YYYY-MM-DD'));

INSERT INTO angajat VALUES (8, 3, 'Larisa Preda', 'Bucătar', TO_DATE('2018-10-24', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (9, 3, 'Mihai Anton', 'Chelner', TO_DATE('2016-09-15', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (10, 3, 'Andrei Tudose', 'Manager', TO_DATE('2016-08-06', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (11, 3, 'Ecaterina Vasiliu', 'Chelner', TO_DATE('2017-07-27', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (12, 3, 'Alexandru Popica', 'Chelner', TO_DATE('2019-06-18', 'YYYY-MM-DD'));

INSERT INTO angajat VALUES (13, 4, 'Mihnea Irineu', 'Manager', TO_DATE('2015-05-29', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (14, 4, 'Andreea Avram', 'Bucatar', TO_DATE('2016-04-20', 'YYYY-MM-DD'));

INSERT INTO angajat VALUES (15, 5, 'Andrei Munteanu', 'Chelner', TO_DATE('2019-02-21', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (16, 5, 'Ioana Manea', 'Bucatar', TO_DATE('2018-11-02', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (17, 5, 'Bogdan Dinu', 'Manager', TO_DATE('2017-4-01', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (18, 5, 'Laura Ciubotaru', 'Chelner', TO_DATE('2016-12-10', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (19, 5, 'Dan Marinescu', 'Chelner', TO_DATE('2022-09-15', 'YYYY-MM-DD'));
INSERT INTO angajat VALUES (20, 5, 'Raluca Bulcea', 'Chelner', TO_DATE('2020-09-24', 'YYYY-MM-DD'));


-- Inserarea datelor în tabela 'masa'
INSERT INTO masa VALUES (1, 1, 4);
INSERT INTO masa VALUES (2, 1, 2);
INSERT INTO masa VALUES (3, 1, 2);
INSERT INTO masa VALUES (4, 1, 6);

INSERT INTO masa VALUES (5, 2, 6);
INSERT INTO masa VALUES (6, 2, 8);
INSERT INTO masa VALUES (7, 2, 4);
INSERT INTO masa VALUES (8, 2, 2);

INSERT INTO masa VALUES (9, 3, 4);
INSERT INTO masa VALUES (10, 3, 2);
INSERT INTO masa VALUES (11, 3, 2);
INSERT INTO masa VALUES (12, 3, 6);
INSERT INTO masa VALUES (13, 3, 6);
INSERT INTO masa VALUES (14, 3, 8);
INSERT INTO masa VALUES (15, 3, 4);
INSERT INTO masa VALUES (16, 3, 4);

INSERT INTO masa VALUES (17, 4, 4);
INSERT INTO masa VALUES (18, 4, 2);
INSERT INTO masa VALUES (19, 4, 2);

INSERT INTO masa VALUES (20, 5, 4);
INSERT INTO masa VALUES (21, 5, 2);
INSERT INTO masa VALUES (22, 5, 2);
INSERT INTO masa VALUES (23, 5, 6);
INSERT INTO masa VALUES (24, 5, 6);
INSERT INTO masa VALUES (25, 5, 8);
INSERT INTO masa VALUES (26, 5, 4);


-- Inserarea datelor în tabela 'client'
INSERT INTO client VALUES (1, 'Andrei Muntea', '0722123456');
INSERT INTO client VALUES (2, 'Ioana Grigoras', '0733344567');
INSERT INTO client VALUES (3, 'Bogdan Raducan', '0744455678');
INSERT INTO client VALUES (4, 'Laura Popoiu', '0755566789');
INSERT INTO client VALUES (5, 'Dan Carturasu', '0766677890');
INSERT INTO client VALUES (6, 'Cătălina Sorescu', '0777888901');
INSERT INTO client VALUES (7, 'Florin Călinescu', '0777888902');
INSERT INTO client VALUES (8, 'Diana Dumitrescu', '0777888903');
INSERT INTO client VALUES (9, 'Bogdan Stan', '0777888904');
INSERT INTO client VALUES (10, 'Alina Manea', '0777888905');
INSERT INTO client VALUES (11, 'Teodor Ionescu', '0777888906');
INSERT INTO client VALUES (12, 'Sorina Muntean', '0777888907');
INSERT INTO client VALUES (13, 'Cristian Popescu', '0777888908');
INSERT INTO client VALUES (14, 'Monica Anghel', '0777888909');
INSERT INTO client VALUES (15, 'Radu Toma', '0777888910');


-- Inserarea datelor în tabela 'rezervare'
INSERT INTO rezervare VALUES (1, 2, 3, 2, TO_DATE('2024-02-18 19:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (2, 5, 1, 4, TO_DATE('2024-02-19 18:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (3, 3, 8, 2, TO_DATE('2024-02-20 20:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (4, 6, 12, 6, TO_DATE('2024-02-21 18:30', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (5, 4, 18, 2, TO_DATE('2024-02-22 19:30', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (6, 10, 5, 6, TO_DATE('2024-02-23 18:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (7, 9, 26, 4, TO_DATE('2024-02-24 19:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (8, 7, 15, 4, TO_DATE('2024-02-25 20:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (9, 8, 21, 2, TO_DATE('2024-02-26 19:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (10, 15, 9, 4, TO_DATE('2024-02-27 18:30', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (11, 11, 2, 2, TO_DATE('2024-02-28 18:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (12, 14, 14, 8, TO_DATE('2024-03-01 19:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (13, 13, 17, 4, TO_DATE('2024-03-02 20:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (14, 12, 6, 8, TO_DATE('2024-03-03 18:30', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (15, 12, 22, 2, TO_DATE('2024-03-04 19:30', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (16, 11, 24, 6, TO_DATE('2024-03-05 20:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (17, 14, 10, 2, TO_DATE('2024-03-06 18:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (18, 13, 25, 8, TO_DATE('2024-03-07 19:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (19, 15, 13, 6, TO_DATE('2024-03-08 20:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (20, 10, 20, 4, TO_DATE('2024-03-09 19:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (21, 9, 16, 4, TO_DATE('2024-03-10 18:30', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (22, 8, 7, 4, TO_DATE('2024-03-11 18:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (23, 7, 23, 6, TO_DATE('2024-03-12 19:30', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (24, 6, 19, 2, TO_DATE('2024-03-13 20:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO rezervare VALUES (25, 5, 11, 2, TO_DATE('2024-03-14 18:00', 'YYYY-MM-DD HH24:MI'));


-- Inserarea datelor în tabela 'preparat'
INSERT INTO preparat VALUES (1, 'Supă de legume', 10.0);
INSERT INTO preparat VALUES (2, 'Friptură de vită', 50.0);
INSERT INTO preparat VALUES (3, 'Salată grecească', 20.0);
INSERT INTO preparat VALUES (4, 'Peste la grătar', 45.0);
INSERT INTO preparat VALUES (5, 'Pizza Margherita', 30.0);
INSERT INTO preparat VALUES (6, 'Spaghetti Carbonara', 35.0);
INSERT INTO preparat VALUES (7, 'Risotto cu ciuperci', 25.0);
INSERT INTO preparat VALUES (8, 'Escalop de porc', 40.0);
INSERT INTO preparat VALUES (9, 'Salată de quinoa cu legume', 22.0);
INSERT INTO preparat VALUES (10, 'Burger de somon', 55.0);

-- Inserarea datelor în tabela 'produs'
INSERT INTO produs VALUES (1, 'Faina', 3.5, TO_DATE('2025-06-15', 'YYYY-MM-DD'));
INSERT INTO produs VALUES (2, 'Pui', 1.2, TO_DATE('2024-02-10', 'YYYY-MM-DD'));
INSERT INTO produs VALUES (3, 'Porc', 2.5, TO_DATE('2024-02-20', 'YYYY-MM-DD'));
INSERT INTO produs VALUES (4, 'Ouă', 0.8, TO_DATE('2024-02-05', 'YYYY-MM-DD'));
INSERT INTO produs VALUES (5, 'Peste', 4.5, TO_DATE('2024-02-22', 'YYYY-MM-DD'));
INSERT INTO produs VALUES (6, 'Roșii', 2.3, TO_DATE('2024-03-18', 'YYYY-MM-DD'));


-- Inserarea datelor în tabela 'comanda'
INSERT INTO comanda VALUES (1, 1, 3, TO_DATE('2024-01-06 18:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO comanda VALUES (2, 4, 3, TO_DATE('2024-01-06 18:30', 'YYYY-MM-DD HH24:MI'));
INSERT INTO comanda VALUES (3, 5, 7, TO_DATE('2024-01-07 19:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO comanda VALUES (4, 4, 2, TO_DATE('2024-01-08 18:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO comanda VALUES (5, 1, 2, TO_DATE('2024-01-08 18:30', 'YYYY-MM-DD HH24:MI'));
INSERT INTO comanda VALUES (6, 9, 10, TO_DATE('2024-01-09 19:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO comanda VALUES (7, 18, 23, TO_DATE('2024-01-10 18:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO comanda VALUES (8, 12, 11, TO_DATE('2024-01-11 18:30', 'YYYY-MM-DD HH24:MI'));
INSERT INTO comanda VALUES (9, 19, 25, TO_DATE('2024-01-12 19:00', 'YYYY-MM-DD HH24:MI'));
INSERT INTO comanda VALUES (10, 11, 14, TO_DATE('2024-01-12 19:30', 'YYYY-MM-DD HH24:MI'));

-- Inserarea datelor în tabela 'detalii_comanda'
INSERT INTO detalii_comanda VALUES (1, 1);
INSERT INTO detalii_comanda VALUES (1, 2);
INSERT INTO detalii_comanda VALUES (2, 3);
INSERT INTO detalii_comanda VALUES (2, 4);
INSERT INTO detalii_comanda VALUES (3, 5);
INSERT INTO detalii_comanda VALUES (4, 6);
INSERT INTO detalii_comanda VALUES (5, 7);
INSERT INTO detalii_comanda VALUES (6, 8);
INSERT INTO detalii_comanda VALUES (7, 9);
INSERT INTO detalii_comanda VALUES (8, 10);
INSERT INTO detalii_comanda VALUES (9, 1);
INSERT INTO detalii_comanda VALUES (10, 2);

select * from detalii_comanda;

-- Inserarea datelor în tabela 'reteta'
INSERT INTO reteta VALUES (1, 1, 2);
INSERT INTO reteta VALUES (1, 2, 1);

INSERT INTO reteta VALUES (2, 3, 1);
INSERT INTO reteta VALUES (2, 4, 2);

INSERT INTO reteta VALUES (3, 5, 1);

INSERT INTO reteta VALUES (4, 2, 1);
INSERT INTO reteta VALUES (4, 3, 1);
INSERT INTO reteta VALUES (4, 4, 1);
INSERT INTO reteta VALUES (4, 5, 1);

INSERT INTO reteta VALUES (5, 5, 2);
INSERT INTO reteta VALUES (5, 1, 1);
INSERT INTO reteta VALUES (5, 2, 1);

INSERT INTO reteta VALUES (6, 1, 1);
INSERT INTO reteta VALUES (6, 3, 1);

INSERT INTO reteta VALUES (7, 2, 1);
INSERT INTO reteta VALUES (7, 4, 1);
INSERT INTO reteta VALUES (7, 5, 1);

INSERT INTO reteta VALUES (8, 5, 1);
INSERT INTO reteta VALUES (8, 2, 1);

INSERT INTO reteta VALUES (9, 3, 2);
INSERT INTO reteta VALUES (9, 1, 1);

INSERT INTO reteta VALUES (10, 4, 1);


-- Inserarea datelor în tabela 'stoc'
INSERT INTO stoc VALUES (1, 1, 50);
INSERT INTO stoc VALUES (1, 2, 60);
INSERT INTO stoc VALUES (1, 3, 55);
INSERT INTO stoc VALUES (1, 4, 45);
INSERT INTO stoc VALUES (1, 5, 65);

INSERT INTO stoc VALUES (2, 1, 100);
INSERT INTO stoc VALUES (2, 2, 120);
INSERT INTO stoc VALUES (2, 3, 110);
INSERT INTO stoc VALUES (2, 4, 90);
INSERT INTO stoc VALUES (2, 5, 130);

INSERT INTO stoc VALUES (3, 1, 70);
INSERT INTO stoc VALUES (3, 2, 80);
INSERT INTO stoc VALUES (3, 3, 75);
INSERT INTO stoc VALUES (3, 4, 65);
INSERT INTO stoc VALUES (3, 5, 85);

INSERT INTO stoc VALUES (4, 1, 200);
INSERT INTO stoc VALUES (4, 2, 220);
INSERT INTO stoc VALUES (4, 3, 210);
INSERT INTO stoc VALUES (4, 4, 90);
INSERT INTO stoc VALUES (4, 5, 230);

INSERT INTO stoc VALUES (5, 1, 40);
INSERT INTO stoc VALUES (5, 2, 50);
INSERT INTO stoc VALUES (5, 3, 45);
INSERT INTO stoc VALUES (5, 4, 35);
INSERT INTO stoc VALUES (5, 5, 55);

INSERT INTO stoc VALUES (6, 1, 60);
INSERT INTO stoc VALUES (6, 2, 70);
INSERT INTO stoc VALUES (6, 3, 65);
INSERT INTO stoc VALUES (6, 4, 55);
INSERT INTO stoc VALUES (6, 5, 75);

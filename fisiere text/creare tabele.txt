-- Tabela 'restaurant'
CREATE TABLE restaurant (
    id_restaurant INT PRIMARY KEY,
    nume VARCHAR2(100),
    locatie VARCHAR2(100)
);

-- Tabela 'angajat'
CREATE TABLE angajat (
    id_angajat INT PRIMARY KEY,
    id_restaurant INT,
    nume VARCHAR2(100),
    pozitie VARCHAR2(100),
    data_angajarii DATE,
    FOREIGN KEY (id_restaurant) REFERENCES restaurant(id_restaurant)
);

-- Tabela 'comanda'
CREATE TABLE comanda (
    id_comanda INT PRIMARY KEY,
    id_angajat INT,
    id_masa INT,
    data_comenzii DATE,
    FOREIGN KEY (id_angajat) REFERENCES angajat(id_angajat),
    FOREIGN KEY (id_masa) REFERENCES masa(id_masa)
);

-- Tabela 'masa'
CREATE TABLE masa (
    id_masa INT PRIMARY KEY,
    id_restaurant INT,
    numar_locuri INT,
    FOREIGN KEY (id_restaurant) REFERENCES restaurant(id_restaurant)
);

-- Tabela 'client'
CREATE TABLE client (
    id_client INT PRIMARY KEY,
    nume VARCHAR2(100),
    telefon VARCHAR2(15)
);

-- Tabela 'rezervare'
CREATE TABLE rezervare (
    id_rezervare INT PRIMARY KEY,
    id_client INT,
    id_masa INT,
    numar_locuri INT,
    ora_rezervare DATE,
    FOREIGN KEY (id_client) REFERENCES client(id_client),
    FOREIGN KEY (id_masa) REFERENCES masa(id_masa)
);

-- Tabela 'detalii_comanda'
CREATE TABLE detalii_comanda (
    id_comanda INT,
    id_preparat INT,
    FOREIGN KEY (id_comanda) REFERENCES comanda(id_comanda),
    FOREIGN KEY (id_preparat) REFERENCES preparat(id_preparat)
);

-- Tabela 'preparat'
CREATE TABLE preparat (
    id_preparat INT PRIMARY KEY,
    nume VARCHAR2(100),
    pret FLOAT
);

-- Tabela 'reteta'
CREATE TABLE reteta (
    id_preparat INT,
    id_produs INT,
    cantitate INT,
    FOREIGN KEY (id_preparat) REFERENCES preparat(id_preparat),
    FOREIGN KEY (id_produs) REFERENCES produs(id_produs)
);

-- Tabela 'stoc'
CREATE TABLE stoc (
    id_produs INT,
    id_restaurant INT,
    cantitate INT,
    FOREIGN KEY (id_produs) REFERENCES produs(id_produs),
    FOREIGN KEY (id_restaurant) REFERENCES restaurant(id_restaurant)
);

-- Tabela 'produs'
CREATE TABLE produs (
    id_produs INT PRIMARY KEY,
    nume VARCHAR2(100),
    pret FLOAT,
    data_expirare DATE
);

ALTER TABLE restaurant ADD UNIQUE (id_restaurant, nume);
ALTER TABLE angajat ADD UNIQUE (id_restaurant, id_angajat);
ALTER TABLE client ADD UNIQUE (id_client);
ALTER TABLE masa ADD UNIQUE (id_restaurant, id_masa);
ALTER TABLE rezervare ADD UNIQUE (id_client, id_masa, ora_rezervare);
ALTER TABLE detalii_comanda ADD UNIQUE (id_comanda, id_preparat);
ALTER TABLE reteta ADD UNIQUE (id_preparat, id_produs);
ALTER TABLE stoc ADD UNIQUE (id_restaurant, id_produs);
ALTER TABLE produs ADD UNIQUE (id_produs);

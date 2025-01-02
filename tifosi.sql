-- Création de la base de données Tifosi --
CREATE DATABASE tifosi;

-- Création de l'utilisateur tifosi et ses privilèges --
CREATE USER 'tifosi'@'localhost' IDENTIFIED BY 'focaccia';
GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi'@'localhost';
FLUSH PRIVILEGES;

USE tifosi;

-- Création des tables --

CREATE TABLE client (
    id_client INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_client VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    cp_client INT NOT NULL
);



CREATE TABLE focaccia (
    id_focaccia INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_focaccia VARCHAR(45) NOT NULL,
    prix_focaccia FLOAT NOT NULL
);



CREATE TABLE ingredient (
    id_ingredient INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_ingredient VARCHAR(45) NOT NULL
);



CREATE TABLE achete (
    id_achete INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_client INT NOT NULL,
    id_focaccia INT NOT NULL,
    jour DATE NOT NULL,
    FOREIGN KEY (id_client) REFERENCES client(id_client),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
);



CREATE TABLE comprend (
    id_comprend INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_focaccia INT NOT NULL,
    id_ingredient INT NOT NULL,
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
);



CREATE TABLE menu (
    id_menu INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_menu VARCHAR(45) NOT NULL,
    prix_menu FLOAT NOT NULL
);



CREATE TABLE paye (
    id_paye INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_client INT NOT NULL,
    id_menu INT NOT NULL,
    jour DATE NOT NULL,
    FOREIGN KEY (id_client) REFERENCES client(id_client),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
);



CREATE TABLE constitue (
    id_constitue INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_focaccia INT NOT NULL,
    id_menu INT NOT NULL,
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
);



CREATE TABLE boisson (
    id_boisson INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_boisson VARCHAR(45) NOT NULL
);



CREATE TABLE contient (
    id_contient INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_menu INT NOT NULL,
    id_boisson INT NOT NULL,
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson)
);



CREATE TABLE marque (
    id_marque INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_marque VARCHAR(45) NOT NULL
);



CREATE TABLE appartient (
    id_appartient INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_boisson INT NOT NULL,
    id_marque INT NOT NULL,
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson),
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);

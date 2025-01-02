USE tifosi;



-- Focaccia data --

INSERT INTO
    focaccia (nom_focaccia, prix_focaccia)
VALUES
    ('Mozaccia', 9.80),
    ('Gorgonzollaccia', 10.80),
    ('Raclaccia', 8.90),
    ('Emmentalaccia', 9.80),
    ('Tradizione', 8.90),
    ('Hawaienne', 11.20),
    ('Américaine', 10.80),
    ('Paysanne', 12.80);



-- Ingredients data --

INSERT INTO
    ingredient (nom_ingredient)
VALUES
    ('Ail'),
    ('Ananas'),
    ('Artichaud'),
    ('Bacon'),
    ('Base Tomate'),
    ('Base crème'),
    ('Champignon'),
    ('Chevre'),
    ('Cresson'),
    ('Emmental'),
    ('Gorgonzola'),
    ('Jambon Cuit'),
    ('Jambon Fumé'),
    ('Mozzarella'),
    ('Oeuf'),
    ('Oignon'),
    ('Olive Noire'),
    ('Olive Verte'),
    ('Parmesan'),
    ('Piment'),
    ('Poivre'),
    ('Pomme de Terre'),
    ('Raclette'),
    ('Salami'),
    ('Tomate Cerise');



-- Comprend data --

INSERT INTO
    comprend (id_focaccia, id_ingredient)
VALUES  
    (1, 5),
    (1, 14),
    (1, 9),
    (1, 13),
    (1, 1),
    (1, 3),
    (1, 7),
    (1, 19),
    (1, 21),
    (1, 17),
    (2, 5),
    (2, 11),
    (2, 9),
    (2, 1),
    (2, 7),
    (2, 19),
    (2, 21),
    (3, 5),
    (3, 23),
    (3, 9),
    (3, 1),
    (3, 7),
    (3, 19),
    (3, 21),
    (4, 6),
    (4, 10),
    (4, 9),
    (4, 7),
    (4, 19),
    (4, 21),
    (4, 16),
    (5, 5),
    (5, 14),
    (5, 9),
    (5, 12),
    (5, 7),
    (5, 19),
    (5, 21),
    (5, 17),
    (5, 18),
    (6, 5),
    (6, 14),
    (6, 9),
    (6, 4),
    (6, 2),
    (6, 20),
    (6, 19),
    (6, 21),
    (6, 17),
    (7, 5),
    (7, 14),
    (7, 9),
    (7, 4),
    (7, 22),
    (7, 19),
    (7, 22),
    (7, 19),
    (7, 21),
    (7, 17),
    (8, 6),
    (8, 8),
    (8, 9),
    (8, 22),
    (8, 13),
    (8, 1),
    (8, 3),
    (8, 7),
    (8, 19),
    (8, 21),
    (8, 17),
    (8, 15);



-- Boissons data --


INSERT INTO 
    boisson (nom_boisson)
VALUES
    ('Coca-cola zéro'),
    ('Coca-cola original'),
    ('Fanta citron'),
    ('Fanta orange'),
    ('Capri-sun'),
    ('Pepsi'),
    ('Pepsi Max zéro'),
    ('Lipton zéro citron'),
    ('Lipton Peach'),
    ('Monster energy ultra gold'),
    ('Monster energy ultra blue'),
    ('Eau de source');



-- Marques data --

INSERT INTO 
    marque (nom_marque)
VALUES
    ('Coca-cola'),
    ('Cristalline'),
    ('Monster'),
    ('Pepsico');


-- Appartient data -- 


INSERT INTO
    appartient (id_marque, id_boisson)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5),
    (2, 12),
    (3, 10),
    (3, 11),
    (4, 6),
    (4, 7),
    (4, 8),
    (4, 9);



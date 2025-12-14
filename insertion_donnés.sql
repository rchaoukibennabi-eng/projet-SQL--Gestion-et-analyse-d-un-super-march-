INSERT INTO Categorie VALUES
(1, 'Alimentation'),
(2, 'Boissons');

INSERT INTO Produit VALUES
(1, 'Pâtes', 1.50, 100, 1),
(2, 'Riz', 2.00, 80, 1),
(3, 'Eau', 0.50, 200, 2);

INSERT INTO Client VALUES
(1, 'Dupont', 'Marie', TRUE),
(2, 'Martin', 'Paul', FALSE);

INSERT INTO Employe VALUES
(1, 'Durand', 'Caissier'),
(2, 'Lefevre', 'Responsable');

INSERT INTO Commande VALUES
(1, '2025-01-10', 1, 1),
(2, '2025-01-11', 2, 1);

INSERT INTO LigneCommande VALUES
(1, 1, 3),
(1, 3, 6),
(2, 2, 2);
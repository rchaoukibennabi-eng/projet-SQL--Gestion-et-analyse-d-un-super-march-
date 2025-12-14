CREATE TABLE Categorie (
id_categorie INT PRIMARY KEY,
nom_categorie VARCHAR(50)
);

CREATE TABLE Produit (
id_produit INT PRIMARY KEY,
nom_produit VARCHAR(50),
prix DECIMAL(10,2),
stock INT,
id_categorie INT,
FOREIGN KEY (id_categorie) REFERENCES Categorie(id_categorie)
);

CREATE TABLE Client (
id_client INT PRIMARY KEY,
nom VARCHAR(50),
prenom VARCHAR(50),
fidelite BOOLEAN
);

CREATE TABLE Employe (
id_employe INT PRIMARY KEY,
nom VARCHAR(50),
poste VARCHAR(50)
);

CREATE TABLE Commande (
id_commande INT PRIMARY KEY,
date_commande DATE,
id_client INT,
id_employe INT,
FOREIGN KEY (id_client) REFERENCES Client(id_client),
FOREIGN KEY (id_employe) REFERENCES Employe(id_employe)
);

CREATE TABLE LigneCommande (
id_commande INT,
id_produit INT,
quantite INT,
PRIMARY KEY (id_commande, id_produit),
FOREIGN KEY (id_commande) REFERENCES Commande(id_commande),
FOREIGN KEY (id_produit) REFERENCES Produit(id_produit)
);
-- Chiffre d'affaires total
SELECT SUM(p.prix * lc.quantite) AS chiffre_affaires_total
FROM LigneCommande lc
JOIN Produit p ON lc.id_produit = p.id_produit;

-- Dépense totale par client
SELECT c.nom, c.prenom,
SUM(p.prix * lc.quantite) AS total_depense
FROM Client c
JOIN Commande co ON c.id_client = co.id_client
JOIN LigneCommande lc ON co.id_commande = lc.id_commande
JOIN Produit p ON lc.id_produit = p.id_produit
GROUP BY c.nom, c.prenom;

-- Produits les plus vendus
SELECT p.nom_produit, SUM(lc.quantite) AS quantite_vendue
FROM Produit p
JOIN LigneCommande lc ON p.id_produit = lc.id_produit
GROUP BY p.nom_produit
ORDER BY quantite_vendue DESC;

-- Stock restant
SELECT p.nom_produit,
p.stock - COALESCE(SUM(lc.quantite), 0) AS stock_restant
FROM Produit p
LEFT JOIN LigneCommande lc ON p.id_produit = lc.id_produit
GROUP BY p.nom_produit, p.stock;
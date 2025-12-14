# Mini projet SQL – Gestion d’un supermarché

## Présentation du projet

Ce projet a été réalisé dans le but de mettre en pratique les bases de données relationnelles et le langage SQL à travers un cas concret : la gestion d’un supermarché.

L’objectif n’est pas de reproduire un système réel complexe, mais de concevoir une base de données cohérente permettant de stocker des informations sur les produits, les clients, les employés et les ventes, puis d’exploiter ces données à l’aide de requêtes SQL.

Ce mini projet permet de travailler plusieurs notions fondamentales :
- la modélisation relationnelle
- les clés primaires et étrangères
- les jointures
- les fonctions d’agrégation
- l’analyse de données simples à partir de requêtes SQL

---

## Objectifs

Les objectifs principaux de ce projet sont :
- concevoir un schéma de base de données adapté à un supermarché
- créer les tables en respectant les relations entre elles
- insérer des données cohérentes
- répondre à des questions simples de type “business” grâce à SQL

---

## Description de la base de données

La base de données est composée de six tables :

- **Categorie** : contient les catégories de produits
- **Produit** : contient les produits vendus dans le supermarché
- **Client** : contient les informations sur les clients
- **Employe** : contient les employés du magasin
- **Commande** : contient les commandes réalisées
- **LigneCommande** : table de liaison entre les commandes et les produits

Ce choix permet de respecter la normalisation et d’éviter la redondance des données.

---

## Technologies utilisées

- SQL
- SGBD compatible MySQL ou PostgreSQL

Aucune autre technologie n’a été utilisée afin de se concentrer uniquement sur le langage SQL et la logique des bases de données.

---

## Contenu du dépôt

- `create_tables.sql` : création des tables et des relations
- `insert_data.sql` : insertion de données d’exemple
- `queries.sql` : requêtes SQL d’analyse
- `conclusion.md` : conclusion et bilan du projet

---

## Améliorations possibles

Ce projet peut être amélioré de plusieurs manières :
- ajouter une gestion des paiements
- analyser les ventes sur une période donnée
- automatiser la mise à jour des stocks
- connecter la base à un outil de visualisation de données

Ces améliorations n’ont pas été intégrées afin de garder le projet volontairement simple.

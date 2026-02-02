SELECT * FROM commandes;

-- Liste des commandes avec le nom du clients => INNER JOIN
SELECT c.commande_id, cl.name, c.date_commande
FROM commandes c
INNER JOIN clients cl ON c.client_id = cl.client_id;

-- Tous les clients meme sans commande => LEFT JOIN
SELECT cl.name, c.commande_id
FROM clients cl
LEFT JOIN commandes c ON cl.client_id = c.client_id;

-- Détail des produits commandés 
SELECT cl.name AS client,
        p.name AS product,
        cp.quantity,
        p.prix
FROM commandeProduct cp
JOIN commandes c ON cp.commande_id = c.commande_id
JOIN clients cl ON c.client_id = cl.client_id
JOIN products p ON cp.product_id = p.product_id;

-- Total dépensé par client
SELECT cl.name, 
        SUM(cp.quantity * p.prix) AS total_spend
FROM clients cl
JOIN commandes c ON cl.client_id = c.client_id
JOIN commandeProduct cp ON c.commande_id = cp.commande_id
JOIN products p ON cp.product_id = p.product_id
GROUP BY cl.name;

-- Nombre de commandes par client
SELECT cl.name, COUNT(c.commande_id) AS nb_commandes
FROM clients cl
LEFT JOIN commandes c ON cl.client_id = c.client_id
GROUP BY cl.name;

-- Clients ayant dépensé plus de 1000$
SELECT cl.name,
       SUM(cp.quantity * p.prix) AS total
FROM clients cl
JOIN commandes c ON cl.client_id = c.client_id
JOIN commandeProduct cp ON c.commande_id = cp.commande_id
JOIN products p ON cp.product_id = p.product_id
GROUP BY cl.name
HAVING SUM(cp.quantity * p.prix) > 1000;

-- Produits jamais commandés
SELECT p.name
FROM products p 
LEFT JOIN commandeProduct cp ON p.product_id = cp.product_id
WHERE cp.product_id IS NULL;

-- Produit le plus vendu
SELECT p.name, SUM(cp.quantity) AS total_sale
FROM products p 
JOIN commandeProduct cp ON p.product_id = cp.product_id
GROUP BY p.name
ORDER BY total_sale DESC
LIMIT 1;

-- Chiffre d’affaires par jour

SELECT c.date_commande,
        SUM(cp.quantity * p.prix) AS chiffre_affaires
FROM commandes c 
JOIN commandeProduct cp ON c.commande_id = cp.commande_id 
JOIN products p ON cp.product_id = p.product_id
GROUP BY c.date_commande;
USE eshop;

CREATE TABLE clients (
    client_id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    name VARCHAR(100),
    prix DECIMAL(10, 2)
);

CREATE TABLE commandes(
    commande_id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    client_id INT,
    date_commande DATE,

    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE commandeProduct (
    commande_id INT,
    product_id INT,
    quantity INT,

    PRIMARY KEY (commande_id, product_id),
    FOREIGN KEY (commande_id) REFERENCES commandes(commande_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
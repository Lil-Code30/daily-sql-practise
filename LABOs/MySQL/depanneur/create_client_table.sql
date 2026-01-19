CREATE TABLE client (
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(150),
    last_name VARCHAR(150),
    type_client VARCHAR(50), -- Ex. Regular, occasional
    city VARCHAR(50)
);
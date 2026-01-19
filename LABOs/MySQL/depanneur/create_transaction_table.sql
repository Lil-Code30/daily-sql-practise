CREATE TABLE transaction (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT,
    product_id INT,
    date DATE DEFAULT (CURRENT_DATE()),
    quantity INT,
    unit_price DECIMAL(10 ,2),
    total_amount DECIMAL(10,2),

    CONSTRAINT fk_client FOREIGN KEY (client_id) REFERENCES client(client_id),
    
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES products(product_id)
)
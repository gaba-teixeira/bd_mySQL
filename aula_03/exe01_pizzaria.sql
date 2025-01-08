	CREATE DATABASE db_pizzaria_legal;
    USE db_pizzaria_legal;
    
    CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    descricao VARCHAR(255)  NOT NULL,
    disponivel BOOLEAN, 
    PRIMARY KEY(id)
    
    );
    
    INSERT INTO tb_categorias(descricao, disponivel)
    VALUES ("Salgada", true),
    ("Doce", true),
    ("Vegana", true),
    ("Especial", false),
    ("Gluten Free", true);
    
    SELECT * FROM tb_categorias;
    
    CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(255),
    tamanho VARCHAR(255),
    preco DECIMAL(6,2),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
    );
    
    INSERT INTO tb_pizzas (sabor, tamanho, preco, categoria_id)
    VALUES ("Marguerita", "M", 65.00, 1),
    ("Calabresa", "M", 70.00, 1),
    ("Frango c/Catupiry ", "G", 85.00, 3),
    ("Mussarela VegaN", "M", 45.00, 4),
    ("Portuguesa", "P", 45.00, 5),
    ("M&M", "P", 35.00, 2),
    ("Morango com Chocolate", "M", 80.00, 2),
    ("Carne-Seca", "G", 90.00, 5);
    
    SELECT * FROM tb_pizzas;
    
    SELECT * FROM tb_pizzas WHERE preco > 45.00;
      
	SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
    
    SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%" ;
    
    SELECT * FROM tb_pizzas INNER JOIN tb_categorias
    ON tb_pizzas.categoria_id = tb_categorias.id;
    

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_pizzas.categoria_id = 2
;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_pizzas.categoria_id = 5;






      
  
    
    
    
    
    
    
    
    
 
    
    
    
    
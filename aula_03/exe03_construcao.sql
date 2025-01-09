CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

  CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
	setores VARCHAR(255) ,
    localidade VARCHAR(255),
	PRIMARY KEY(id)
    
    );

    INSERT INTO tb_categorias (setores, localidade)
    VALUES ("Eletrica", "Jd. Oceano"),
    ("Construção", "Penha"),
    ("Decoração", "Santana"),
    ("Jardim", "Penha"),
    ("Piso", "Jd Oceano");
    
    SELECT * FROM tb_categorias;
   
    
    CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255),
    quantidade INT,
     valor decimal(6,2),
    categoria_id BIGINT, 
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id));
    
    
     
    INSERT INTO tb_produtos (nome_produto, quantidade, valor, categoria_id)
    VALUES ("Fios Eletricos", 45, 25.00, 1),
    ("Telhas", 60, 10.95, 2),
    ("Quadros", 80, 80.36, 3),
    ("Cortinas", 45, 150.69, 3),
    ("Cimento", 80, 40.25, 2),
    ("Tomadas", 45, 7.30, 1),
    ("Vasos", 50, 25.90, 4),
    ("Ceramica", 100, 250.00, 5);
    
    
    SELECT * FROM tb_produtos;
    
      SELECT * FROM tb_produtos WHERE valor > 100.00;
      
	SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150.00;
    
    SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%" ;
    
    SELECT * FROM tb_produtos INNER JOIN tb_categorias
    ON tb_produtos.categoria_id = tb_categorias.id;
    

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_produtos.categoria_id = 3
;
  
   
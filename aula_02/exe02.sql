CREATE DATABASE db_exe02;
USE db_exe02;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) not NULL,
tipo VARCHAR(255),
quantidade INT,
preco decimal (6,2), 
PRIMARY KEY(id)

);


INSERT INTO tb_produtos(nome, tipo, quantidade, preco)
VALUES ("Game Round 6", "Ação", 15, 110.20), 
("GTA", "Ação", 20, 525.32), 
("Minecraft", "Survival", 13, 258.20), 
("Dragon Ball", "RPG", 50, 650.23), 
("Farm 2", "Convivencia", 15, 110.85), 
("Beast Game", "Ação", 85, 800.23), 
("GOT", "Suspense", 15, 325.63), 
("SQUID", "Ação", 35, 452.35);


SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET quantidade = 15 WHERE id = 4 or id = 8;


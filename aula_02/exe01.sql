CREATE DATABASE db_exe01;
USE db_exe01;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) not NULL,
data_nascimento DATE,
cargo VARCHAR(255),
departamento VARCHAR(255), 
salario decimal (6,2),
PRIMARY KEY(id)

);

INSERT INTO tb_colaboradores(nome, data_nascimento, cargo, departamento, salario)
VALUES ("Gustavo Andrade", "2000-09-17", "Desencolvedor", "DevOps", 4500.75), 
("Gabriela Teixeira", "1998-05-31", "Desencolvedor", "Maintence", 3800.75),
("Guilherme Leao","1996-02-26", "Engenheiro", "Producao", 6000.75),
("Kilda Marcela", "1985-10-05", "Vendedora", "Comercial", 1985.75),
("Vinicius Silva", "2005-01-23", "Agente", "Cobranca", 1500.75);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET cargo = "Gerente" WHERE id=4;








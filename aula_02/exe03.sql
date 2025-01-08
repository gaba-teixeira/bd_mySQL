CREATE DATABASE db_exe03;
USE db_exe03;

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT,
nome_aluno VARCHAR(255) not NULL,
nome_responsavel VARCHAR(255),
idade INT,
nota decimal (6,2), 
PRIMARY KEY(id)

);


INSERT INTO tb_alunos(nome_aluno, nome_responsavel, idade, nota)
VALUES ("Jose Silva", "Ademir Leao", 15, 7.0), 
("Manuela Oliveira", "Marina Oliveira", 14, 10.0),
("Helena Santos", "Roberto Santos", 14, 6.8),
("Roberto Silva", "Lizandro Ademar", 13, 5.0),
("Leonardo Davi", "Davi Neto", 15, 4.5),
("Maria Silva", "Margarete Leao", 12, 9.0),
("Elis Regina", "Simaria Mendes", 15, 7.0),
("Jose Sanros", "Ademilson Roberto", 15, 8.5);


SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7.00;

SELECT * FROM tb_alunos WHERE nota < 7.00;

UPDATE tb_alunos SET nota = 8.0 WHERE id= 8;


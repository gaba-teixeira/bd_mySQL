CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

  CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
	area VARCHAR(255) ,
    modalidade VARCHAR(255),
	PRIMARY KEY(id)
    
    );

    INSERT INTO tb_categorias (area, modalidade)
    VALUES ("Engenharia", "Presencial"),
    ("Biologicas", "EAD"),
    ("Tecnologia", "EAD"),
    ("Artes", "Presencial"),
    ("Comunicação", "Presencial");
    
    SELECT * FROM tb_categorias;
   
    
    CREATE TABLE tb_cursos(
    id BIGINT AUTO_INCREMENT,
    nome_curso VARCHAR(255),
    quantidade_vagas INT,
    data_inicio DATE,
     valor decimal(6,2),
    categoria_id BIGINT, 
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id));
    
    
     
    INSERT INTO tb_cursos (nome_curso, quantidade_vagas, data_inicio, valor, categoria_id)
    VALUES ("Engenharia Quimica", 45, "2025-02-26", 2500.00, 1),
    ("Biologia Marinha", 60, "2025-02-26", 500.95, 2),
    ("Engenharia Produção", 80, "2025-03-10", 752.36, 1),
    ("Teatro", 45, "2025-02-26", 250.69, 4),
    ("Ciencia da Computacao", 70, "2025-06-10", 475.25, 3),
    ("TI", 45, "2025-02-26", 200.30, 3),
    ("Radio e TV", 80, "2025-02-26", 1500.00, 5),
    ("Jornalismo", 50, "2025-04-15", 5000.00, 5);
    
    
    SELECT * FROM tb_cursos;
    
      SELECT * FROM tb_cursos WHERE valor > 500.00;
      
	SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000.00;
    
    SELECT * FROM tb_cursos WHERE nome_curso LIKE "%c%" ;
    
    SELECT * FROM tb_cursos INNER JOIN tb_categorias
    ON tb_cursos.categoria_id = tb_categorias.id;
    

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_cursos.categoria_id = 1
;
  
   
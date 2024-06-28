CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    carga_horaria INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Desenvolvimento Web', 'Cursos relacionados ao desenvolvimento de aplicações web'),
('Java', 'Cursos de programação em Java'),
('Python', 'Cursos de programação em Python'),
('Machine Learning', 'Cursos de Machine Learning e Inteligência Artificial'),
('Redes de Computadores', 'Cursos de redes e segurança da informação');

INSERT INTO tb_cursos (nome, descricao, valor, carga_horaria, id_categoria) VALUES
('Curso Completo de Desenvolvimento Web', 'Aprenda a desenvolver aplicações web completas', 800.00, 60, 1),
('Java Avançado: Programação Concorrente', 'Dominando técnicas avançadas de programação em Java', 950.00, 50, 2),
('Python para Data Science e Machine Learning', 'Curso prático de Python voltado para análise de dados e machine learning', 700.00, 45, 3),
('Introdução ao Machine Learning', 'Fundamentos e técnicas essenciais de Machine Learning', 600.00, 40, 4),
('Fundamentos de Redes de Computadores', 'Conceitos básicos de redes e protocolos de comunicação', 500.00, 35, 5),
('JavaScript Avançado: Frameworks e APIs Modernas', 'Explorando as últimas tendências do JavaScript', 900.00, 55, 1),
('Java EE: Desenvolvimento de Aplicações Corporativas', 'Desenvolvimento avançado de aplicações empresariais em Java', 1000.00, 70, 2),
('Python Avançado: Construindo Aplicações Escaláveis', 'Desenvolvimento de aplicações Python escaláveis e eficientes', 850.00, 60, 3);

SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT c.*, t.nome AS nome_categoria, t.descricao 
FROM tb_cursos c
INNER JOIN tb_categorias t ON c.id_categoria = t.id;

SELECT c.*, t.nome AS nome_categoria, t.descricao 
FROM tb_cursos c
INNER JOIN tb_categorias t ON c.id_categoria = t.id
WHERE t.nome = 'Machine Learning';
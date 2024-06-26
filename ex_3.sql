CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    serie VARCHAR(10),
    nota DECIMAL(3, 1),
    email VARCHAR(50)
);

INSERT INTO estudantes (nome, idade, serie, nota, email) VALUES
('Ana Silva', 14, '8A', 8.5, 'ana.silva@example.com'),
('Bruno Souza', 15, '9B', 6.7, 'bruno.souza@example.com'),
('Carlos Oliveira', 13, '7A', 9.0, 'carlos.oliveira@example.com'),
('Diana Costa', 14, '8C', 5.5, 'diana.costa@example.com'),
('Elena Santos', 12, '6B', 7.2, 'elena.santos@example.com'),
('Felipe Lima', 15, '9A', 4.8, 'felipe.lima@example.com'),
('Gabriela Alves', 13, '7B', 7.9, 'gabriela.alves@example.com'),
('Henrique Rocha', 14, '8B', 6.3, 'henrique.rocha@example.com');

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

SET SQL_SAFE_UPDATES = 0;

UPDATE estudantes SET nota = 7.5 WHERE nome = 'Bruno Souza';

SET SQL_SAFE_UPDATES = 1;
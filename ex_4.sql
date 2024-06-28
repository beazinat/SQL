CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    idade INT NOT NULL,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Especializado em combate corpo a corpo'),
('Mago', 'Usa magias para atacar e defender'),
('Arqueiro', 'Especialista em ataques à distância com arco e flecha'),
('Ladino', 'Especialista em furtividade e ataques rápidos'),
('Cavaleiro', 'Protege os aliados e tem alta resistência');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, idade, id_classe) VALUES
('Finn', 2500, 1500, 16, 1),
('Jake', 2000, 1200, 28, 1),
('Marceline', 1800, 1300, 1000, 2),
('Princesa Jujuba', 1600, 2000, 19, 2),
('Rei Gelado', 2200, 1100, 1043, 3),
('Beemo', 1000, 800, 5, 4),
('Fionna', 2400, 1800, 16, 1),
('Gunter', 900, 950, 2, 4);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS nome_classe, c.descricao 
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id;

SELECT p.*, c.nome AS nome_classe, c.descricao 
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id
WHERE c.nome = 'Guerreiro';
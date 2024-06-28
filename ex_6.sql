CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Ferramentas', 'Produtos relacionados a ferramentas para construção'),
('Elétrica', 'Produtos relacionados a materiais elétricos'),
('Hidráulica', 'Produtos relacionados a materiais hidráulicos'),
('Acabamento', 'Produtos relacionados a acabamentos para construção'),
('Segurança', 'Produtos relacionados a equipamentos de segurança');

INSERT INTO tb_produtos (nome, descricao, valor, marca, id_categoria) VALUES
('Martelo', 'Martelo de aço resistente', 25.00, 'Tramontina', 1),
('Parafusadeira', 'Parafusadeira elétrica de alta potência', 120.00, 'Bosch', 1),
('Torneira', 'Torneira de metal cromado', 80.00, 'Deca', 3),
('Fiação Elétrica', 'Rolo de fiação elétrica 100m', 150.00, 'Tigre', 2),
('Tinta Acrílica', 'Lata de tinta acrílica branca', 90.00, 'Suvinil', 4),
('Luvas de Segurança', 'Par de luvas de segurança com reforço', 35.00, 'Volk', 5),
('Cimento', 'Saco de cimento 50kg', 30.00, 'Votorantim', 1),
('Tijolo Cerâmico', 'Pacote com 100 unidades', 120.00, 'Cerâmica A', 4);

SELECT * FROM tb_produtos WHERE valor > 100.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS nome_categoria, c.descricao 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.*, c.nome AS nome_categoria, c.descricao 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome = 'Ferramentas';

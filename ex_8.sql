CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    fabricante VARCHAR(50) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Produtos relacionados a medicamentos e remédios'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
('Higiene Pessoal', 'Produtos de higiene e cuidados pessoais'),
('Nutrição', 'Produtos relacionados a suplementos e nutrição'),
('Cuidados Infantis', 'Produtos específicos para cuidados com bebês');

INSERT INTO tb_produtos (nome, descricao, valor, fabricante, id_categoria) VALUES
('Paracetamol 500mg', 'Analgésico e antitérmico', 10.00, 'Genérico', 1),
('Shampoo Anticaspa', 'Shampoo para controle da caspa', 15.00, 'Clear', 2),
('Sabonete Líquido Neutro', 'Sabonete líquido para peles sensíveis', 8.50, 'Dove', 3),
('Multivitamínico A-Z', 'Suplemento vitamínico completo', 25.00, 'Centrum', 4),
('Creme Hidratante Facial', 'Creme hidratante para pele seca', 30.00, 'Nívea', 2),
('Fralda Descartável Pampers', 'Fralda descartável para bebês', 40.00, 'Pampers', 5),
('Protetor Solar FPS 50', 'Protetor solar resistente à água', 55.00, 'L\'Oréal', 2),
('Enxaguante Bucal', 'Enxaguante bucal antisséptico', 12.00, 'Colgate', 3);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS nome_categoria, c.descricao 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.*, c.nome AS nome_categoria, c.descricao 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome = 'Medicamentos';

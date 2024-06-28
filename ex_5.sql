CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas com ingredientes tradicionais'),
('Especial', 'Pizzas com ingredientes especiais'),
('Vegetariana', 'Pizzas sem carne'),
('Doce', 'Pizzas doces'),
('Premium', 'Pizzas com ingredientes premium');

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, ingredientes, valor, tamanho, id_categoria) VALUES
('Margherita', 'Tomate, Queijo, Manjericão', 42.00, 'Média', 1),
('Pepperoni', 'Queijo, Pepperoni', 48.00, 'Grande', 1),
('Frango com Catupiry', 'Frango, Catupiry, Queijo', 50.00, 'Grande', 2),
('Quatro Queijos', 'Mussarela, Provolone, Parmesão, Gorgonzola', 55.00, 'Média', 2),
('Vegetariana', 'Tomate, Pimentão, Cebola, Milho, Ervilha', 45.00, 'Grande', 3),
('Brigadeiro', 'Chocolate, Granulado', 38.00, 'Pequena', 4),
('Romeu e Julieta', 'Queijo, Goiabada', 40.00, 'Pequena', 4),
('Picanha', 'Picanha, Queijo, Cebola, Molho Barbecue', 60.00, 'Grande', 5);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT p.*, c.nome AS nome_categoria, c.descricao 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.*, c.nome AS nome_categoria, c.descricao 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome = 'Doce';

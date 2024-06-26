CREATE DATABASE db_e_commerce;

USE db_e_commerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	marca VARCHAR(255),
    datavalidade DATE,
	preco DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, marca, datavalidade, preco)
VALUES ("Batom", "Dolce Gabbana", "2024-12-09", 480.60),
("Rímel", "Dior", "2025-06-15", 225.55),
("Blush", "Laura Mercier", "2026-11-22", 200.99),
("Perfume", "Chanel", "2027-06-15", 1500.75),
("Perfume", "L'Occitane", "2025-03-07", 185.65),
("Paleta de Sombras", "Gucci", "2024-08-02", 1325.35);

SELECT * FROM tb_produtos WHERE preco >= 500.00;

SELECT * FROM tb_produtos WHERE preco <= 500.00;

UPDATE tb_produtos SET preco = 219.99 WHERE Id = 3;
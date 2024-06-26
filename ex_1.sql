CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(255) NOT NULL,
    aniversario DATE,
	salario DECIMAL(9,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, aniversario, salario)
VALUES ("Fernanda Souza Lima", "Product Owner", "1992-05-25", 27525.51),
("Thiago Rodrigues Barbosa", "Desenvolvedor Fullstack Pleno", "1998-07-15", 21000.75),
("Bianca Nogueira Matos", "Desenvolvedora Frontend Sênior", "1990-10-09", 16700.65),
("Eduardo Fonseca Teixeira", "Analista de dados Júnior", "2000-12-11", 7150.33),
("Vanessa Ramos Vieira", "Arquiteta de Software", "1995-03-20", 12800.71),
("Joaquim Silveira da Silva", "Desenvolvedor de Chatbot Pleno", "1993-01-06", 22960.42);

SELECT * FROM tb_colaboradores WHERE salario >= 2000.00;

SELECT * FROM tb_colaboradores WHERE salario <= 2000.00;

UPDATE tb_colaboradores SET salario = 8520.99 WHERE Id = 4;
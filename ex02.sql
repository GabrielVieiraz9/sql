CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
data_validade date,
preco decimal(6,2) not null,
primary key (id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco) 
VALUES ("Ração",50, "2024-06-11", 26.00),
("Leite condensado",20, "2025-08-01", 3.00),
("Refrigerante guaraná",50, "2025-03-22", 5.00),
("Carne suína",200, "2024-04-03", 56.00),
("Carne bovina",1200, "2024-04-13", 65.00),
("Cereal",500, "2024-07-15", 10.00);

select * from tb_produtos;

UPDATE tb_produtos SET nome = "TV", preco = 1500.00 WHERE Id = 4;

select * from tb_produtos where preco > 500.00;

select * from tb_produtos where preco < 500.00;
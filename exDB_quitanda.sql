/* DDL: data definition language (CREATE, ALTER, DROP) DML: data manipulation language (SELECT, INSERT, UPDATE, DELETE) CRUD. */
CREATE DATABASE db_quitanda72;

USE db_quitanda72;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
data_validade date,
preco decimal(6,2) not null,
primary key (id)
);

select * from tb_produtos;

SELECT AVG(Preco) AS Media FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00),
("maçã",20, "2023-12-15", 5.00),
("laranja",50, "2023-12-15", 10.00),
("banana",200, "2023-12-15", 12.00),
("uva",1200, "2023-12-15", 30.00),
("pêra",500, "2023-12-15", 2.99);


SELECT nome, preco FROM tb_produtos;

DELETE FROM tb_produtos;

select * from tb_produtos;

select * from tb_produtos where preco < 10.00;

select * from tb_produtos where data_validade = current_date();

ALTER TABLE tb_produtos ADD id_categoria bigint;

ALTER TABLE tb_produtos ADD constraint fk_produtos_categoria
foreign key (id_categoria) references tb_categoria (id);

/* ALTER TABLE tb_produtos rename column datavalidade to data_validade; */

alter table tb_produtos ADD descricao varchar (255);

UPDATE tb_produtos SET id_categoria = 6 WHERE Id > 41 AND Id <= 43;
UPDATE tb_produtos SET id_categoria = 1 WHERE Id = 28;
UPDATE tb_produtos SET nome = "TesteNome3", descricao = "TesteDescrição3" WHERE Id = 3;
UPDATE tb_produtos SET descricao = "Banana Prata" WHERE Id = 4;
UPDATE tb_produtos SET descricao = "Uva Italiana" WHERE Id = 5;
UPDATE tb_produtos SET descricao = "Pêra Williams" WHERE Id = 6;

UPDATE tb_produtos SET descricao = "Teste" WHERE Id = 7 AND Id != null;
UPDATE tb_produtos SET descricao = "Teste2" WHERE Id = 8 AND Id != null;

DELETE FROM tb_produtos where id = 29;
DELETE FROM tb_produtos where id = 8;

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, descricao) 
values ("PRODUTO TESTE",12, "2024-12-15", 55.00, "9999");
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, id_categoria)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, id_categoria)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, id_categoria)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, id_categoria)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, id_categoria)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, id_categoria)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, id_categoria)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, id_categoria)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, id_categoria)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, id_categoria)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, id_categoria)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, id_categoria)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);
INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);
INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

select * from tb_produtos;
SELECT nome, preco, quantidade, tb_categoria.descricao
FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.id_categoria = tb_categoria.id;

SELECT nome, preco, quantidade, tb_categoria.descricao
FROM tb_produtos LEFT JOIN tb_categoria
ON tb_produtos.id_categoria = tb_categoria.id;

SELECT nome, preco, quantidade, tb_categoria.descricao
FROM tb_produtos RIGHT JOIN tb_categoria
ON tb_produtos.id_categoria = tb_categoria.id;
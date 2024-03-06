CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
    id bigint auto_increment,
    nome varchar(255) not null,
    corte varchar(100),
    primary key (id)
);

INSERT INTO tb_categorias(nome, corte) 
VALUES 
('Bovina', 'Filé Mignon'),
('Bovina', 'Costela'),
('Suína', 'Pernil'),
('Aves', 'Peito de Frango'),
('Peixe', 'Salmão');

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255),
    preco decimal(10,2) not null,
    quantidade int not null,
    fk_categoria bigint,
    primary key (id),
    foreign key (fk_categoria) references tb_categorias(id)
);

INSERT INTO tb_produtos(nome, descricao, preco, quantidade, fk_categoria) 
VALUES 
('Filé Mignon', 'Filé mignon de primeira qualidade', 30.00, 10, 1),
('Costela', 'Costela bovina para churrasco', 20.00, 15, 2),
('Pernil Suíno', 'Pernil suíno temperado', 25.00, 8, 3),
('Peito de Frango', 'Peito de frango sem pele', 15.00, 20, 4),
('Salmão Fresco', 'Filé de salmão fresco', 35.00, 12, 5),
('Alcatra', 'Alcatra bovina em pedaços', 22.00, 18, 1),
('Linguiça Toscana', 'Linguiça toscana artesanal', 18.00, 25, 2),
('Camarão', 'Camarão grande limpo e congelado', 40.00, 5, 5),
('Coxão Mole', 'Corte bovino macio e suculento', 90.00, 10, 1),
('Coxinha de Frango', 'Salgadinho de frango', 5.00, 20, 4),
('Picanha', 'Picanha bovina para churrasco', 120.00, 15, 1);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE 'C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.fk_categoria = tb_categorias.id;

SELECT * FROM tb_produtos LEFT JOIN tb_categorias
ON tb_produtos.fk_categoria = tb_categorias.id;

SELECT * FROM tb_produtos RIGHT JOIN tb_categorias
ON tb_produtos.fk_categoria = tb_categorias.id;

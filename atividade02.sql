CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id bigint auto_increment,
    tipo varchar(255) not null,
    descricao varchar(255),
    primary key (id)
);

INSERT INTO tb_categorias(tipo, descricao) 
VALUES 
('Salgada', 'Pizzas salgadas tradicionais'),
('Doce', 'Pizzas doces e sobremesas'),
('Vegetariana', 'Pizzas sem carne'),
('Vegana', 'Pizzas sem sabores de origem animal'),
('Especial', 'Pizzas especiais e gourmet');

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
    id bigint auto_increment,
    nome varchar(255) not null,
    sabores varchar(255),
    preco decimal(10,2) not null,
    tamanho varchar(20) not null,
    fk_categoria bigint,
    primary key (id),
    foreign key (fk_categoria) references tb_categorias(id)
);

INSERT INTO tb_pizzas(nome, sabores, preco, tamanho, fk_categoria) 
VALUES 
('Margherita', 'Molho de tomate, mussarela e manjericão', 40.00, 'Média', 1),
('Calabresa', 'Molho de tomate, mussarela, calabresa e cebola', 35.00, 'Média', 1),
('Brigadeiro', 'Brigadeiro, granulado e morango', 25.00, 'Pequena', 2),
('Vegetariana', 'Molho de tomate, mussarela, palmito, tomate e cebola', 45.00, 'Grande', 3),
('Vegan Supreme', 'Molho de tomate, mussarela vegana, cogumelos, pimentão e cebola', 50.00, 'Grande', 4),
('Quatro Queijos', 'Molho de tomate, mussarela, parmesão, gorgonzola e catupiry', 60.00, 'Grande', 1),
('Banana com Canela', 'Banana, canela e açúcar', 30.00, 'Média', 2),
('Frango com Catupiry', 'Molho de tomate, mussarela, frango desfiado e catupiry', 55.00, 'Grande', 1);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%'; /*pizzas que possuam a letra M no atributo nome.*/

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.fk_categoria = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.fk_categoria = tb_categorias.id WHERE tb_categorias.tipo = 'Doce';

CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
    id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255),
    primary key (id)
);

INSERT INTO tb_categorias(nome, descricao) 
VALUES 
('Medicamentos', 'Produtos para enfermidades'),
('Higiene', 'Produtos de higiene pessoal'),
('Cosméticos', 'Produtos de beleza');

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255),
    preco decimal(10,2) not null,
    validade date,
    fk_categoria bigint,
    primary key (id),
    foreign key (fk_categoria) references tb_categorias(id)
);

INSERT INTO tb_produtos(nome, descricao, preco, validade, fk_categoria) 
VALUES 
('Paracetamol', 'Analgésico e antipirético', 10.00, '2024-12-31', 1),
('Shampoo', 'Limpa e fortalece os cabelos', 15.00, '2024-10-30', 2),
('Creme Hidratante', 'Hidrata a pele profundamente', 20.00, '2024-09-15', 2),
('Protetor Solar FPS 30', 'Protege a pele dos raios UV', 30.00, '2024-08-20', 3),
('Vitamina C', 'Auxilia na saúde da pele e sistema imunológico', 25.00, '2024-11-28', 3),
('Desodorante', 'Prevenção de mal odor', 55.00, '2024-06-07', 2),
('Bandaid', 'Auxilia na proteção de machucados', 3.00, '2026-10-18', 1);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%'; /*produtos que possuam a letra C no atributo nome*/

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.fk_categoria = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.fk_categoria = tb_categorias.id WHERE tb_categorias.nome = 'Cosméticos';




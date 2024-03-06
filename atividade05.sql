CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
    id bigint auto_increment,
    tipo varchar(255) not null,
    descricao varchar(255),
    localizacao varchar(100),
    primary key (id)
);

INSERT INTO tb_categorias(tipo, descricao, localizacao) 
VALUES 
('Ferragens', 'Produtos relacionados a ferramentas e materiais de construção', 'Corredor A'),
('Elétrica', 'Produtos relacionados a materiais elétricos', 'Corredor B'),
('Hidráulica', 'Produtos relacionados a materiais hidráulicos', 'Corredor C'),
('Acabamento', 'Produtos relacionados a acabamentos para construção', 'Corredor D'),
('Pintura', 'Produtos relacionados a materiais para pintura', 'Corredor E');

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255),
    preco decimal(10,2) not null,
    marca varchar(50),
    fk_categoria bigint,
    primary key (id),
    foreign key (fk_categoria) references tb_categorias(id)
);

INSERT INTO tb_produtos(nome, descricao, preco, marca, fk_categoria) 
VALUES 
('Parafuso', 'Parafuso de aço zincado', 2.50, 'Ferro Velho', 1),
('Fio Elétrico', 'Fio elétrico flexível 2.5mm', 120.00, 'Fiação Ltda', 2),
('Vaso Sanitário', 'Vaso sanitário com caixa acoplada', 250.00, 'Vaso Bom', 3),
('Piso Cerâmico', 'Piso cerâmico retificado 60x60', 45.00, 'Cerâmica S/A', 4),
('Tinta Acrílica', 'Tinta acrílica fosca branco neve', 80.00, 'Tinta & Cia', 5),
('Fita Isolante', 'Fita isolante de PVC', 5.00, 'Elétrico & CIA', 2),
('Chave de Fenda', 'Chave de fenda simples', 8.00, 'Ferramentas Rápidas', 1),
('Torqueadeira', 'Torqueadeira elétrica de 600W', 180.00, 'Torque Ltda', 1);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.fk_categoria = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.fk_categoria = tb_categorias.id WHERE tb_categorias.tipo = 'Hidráulica';
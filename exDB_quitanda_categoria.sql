CREATE TABLE tb_categoria(
id bigint auto_increment primary key,
descricao varchar(255) not null
);

select * from db_quitanda72.tb_categoria;

INSERT INTO tb_categoria (descricao)
VALUES ("Frutas"), ("Verduras"), ("Legumes"), ("Temperos"), ("Ovos"), ('Outros');

SELECT tb_categoria.Descricao, AVG(Preco) Preco_Medio
FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.Id = tb_produtos.id_categoria
GROUP BY tb_categoria.Descricao;
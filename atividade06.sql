CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
    id bigint auto_increment,
    tipo varchar(255) not null,
    descricao varchar(255),
    area varchar(100),
    primary key (id)
);

INSERT INTO tb_categorias(tipo, descricao, area) 
VALUES 
('Programação', 'Cursos relacionados à programação de software', 'TI'),
('Administração', 'Cursos relacionados à gestão empresarial', 'Negócios'),
('Design', 'Cursos relacionados à criação visual', 'Artes'),
('Marketing', 'Cursos relacionados à estratégias de marketing', 'Negócios'),
('Saúde', 'Cursos relacionados à área da saúde', 'Saúde');

SELECT * FROM tb_categorias;

CREATE TABLE tb_cursos(
    id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255),
    preco decimal(10,2) not null,
    nivel varchar(50),
    fk_categoria bigint,
    primary key (id),
    foreign key (fk_categoria) references tb_categorias(id)
);

INSERT INTO tb_cursos(nome, descricao, preco, nivel, fk_categoria) 
VALUES 
('Curso de Java', 'Aprenda programação Java do básico ao avançado', 800.00, 'Avançado', 1),
('Curso de Administração Financeira', 'Aprenda a gerenciar as finanças de sua empresa', 600.00, 'Intermediário', 2),
('Curso de Photoshop', 'Aprenda a utilizar o software Photoshop para edição de imagens', 1500.00, 'Avançado', 3),
('Curso de Marketing Digital', 'Aprenda estratégias de marketing para o mundo digital', 700.00, 'Intermediário', 4),
('Curso de Enfermagem', 'Formação técnica em enfermagem', 1200.00, 'Intermediário', 5),
('Curso de Python', 'Aprenda programação Python para análise de dados', 900.00, 'Intermediário', 1),
('Curso de Gestão de Projetos', 'Aprenda a gerenciar projetos de forma eficiente', 800.00, 'Avançado', 2),
('Curso de Nutrição', 'Aprenda sobre nutrição e alimentação saudável', 950.00, 'Intermediário', 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.fk_categoria = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.fk_categoria = tb_categorias.id WHERE tb_categorias.area = 'TI';

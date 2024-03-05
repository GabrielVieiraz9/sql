CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
ra bigint auto_increment,
nome varchar(255) not null,
nota int not null,
data_ingresso date,
idade int,
primary key (ra)
);

INSERT INTO tb_alunos(nome, nota, data_ingresso, idade) 
VALUES ("Ana Silva",4, "2024-06-11", 12),
("Rodrigo Santos",7, "2025-08-01", 15),
("Mariana Oliveira",8, "2025-03-22", 13),
("Lucas Pereira",4, "2024-04-03", 14),
("Beatriz Costa",10, "2024-04-13", 14),
("Thiago Souza",2, "2024-07-15", 12),
("Camila Lima",9, "2024-06-11", 12),
("André Almeida",6, "2024-07-15", 12);

select * from tb_alunos;

UPDATE tb_alunos SET nota = 5 WHERE ra = 1;

select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;
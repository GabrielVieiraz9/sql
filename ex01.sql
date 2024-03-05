CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id bigint auto_increment primary key,
nome varchar(255) not null,
cargo varchar(100),
salario decimal (12,2) not null,
data_contratacao date not null,
email varchar(255)
);

INSERT INTO tb_colaboradores(nome, cargo, salario, data_contratacao, email) 
VALUES 
(CONCAT('Colaborador_', FLOOR(RAND() * 1000)), 'Supervisor 1', 8000.00, '2023-12-15', CONCAT('colaborador_', FLOOR(RAND() * 1000), '@empresa.com')),
(CONCAT('Colaborador_', FLOOR(RAND() * 1000)), 'Gerente', 10000.00, '2023-12-15', CONCAT('colaborador_', FLOOR(RAND() * 1000), '@empresa.com')),
(CONCAT('Colaborador_', FLOOR(RAND() * 1000)), 'Supervisor 2', 5000.00, '2023-12-15', CONCAT('colaborador_', FLOOR(RAND() * 1000), '@empresa.com')),
(CONCAT('Colaborador_', FLOOR(RAND() * 1000)), 'Estagiário', 3000.00, '2023-12-15', CONCAT('colaborador_', FLOOR(RAND() * 1000), '@empresa.com')),
(CONCAT('Colaborador_', FLOOR(RAND() * 1000)), 'Júnior', 3500.00, '2023-12-15', CONCAT('colaborador_', FLOOR(RAND() * 1000), '@empresa.com'));

UPDATE tb_colaboradores SET salario = 1500.00 WHERE Id = 4;

select * from tb_colaboradores;

select * from tb_colaboradores where salario < 2000.00;

select * from tb_colaboradores where salario > 2000.00;
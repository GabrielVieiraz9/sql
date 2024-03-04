CREATE database livraria;
DROP DATABASE livraria;
CREATE database livraria;

USE livraria;

create table tb_clientes(
    id_cliente bigint(5) auto_increment, 
    nome varchar(30) not null,
    email varchar(50),
    senha varchar(50),
    primary key (id_cliente)
);


SELECT * FROM livraria.tb_clientes;
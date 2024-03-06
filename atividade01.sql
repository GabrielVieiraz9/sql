CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
classe varchar(255) not null,
passiva_classe int not null,
primary key (id)
);

INSERT INTO tb_classes(classe, passiva_classe) 
VALUES ("Warrior", 2),
("Mage", 3),
("Archer", 5),
("Warlock", 3),
("Paladin", 1),
("Engineer", 6);

select * from tb_classes;

CREATE TABLE tb_personagens(
id bigint auto_increment,
raca varchar(255) not null,
passiva_raca int not null,
damage int not null,
hp int not null,
defense int not null,
primary key (id)
);

ALTER TABLE tb_personagens ADD COLUMN fk_classes bigint;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_classes FOREIGN KEY (fk_classes) REFERENCES tb_classes(id);

INSERT INTO tb_personagens(raca, passiva_raca, damage, hp, defense, fk_classes) 
VALUES ("Human", 1, 2000, 5000, 1000, 2),
("Dwarf", 2, 1100, 4000, 900, 3),
("Dark Elf", 3,  1500, 3000, 1000, 2),
("Pandaren", 4,  900, 6000, 1500, 1),
("Gnome", 5,  1300, 3000, 1500, 6),
("Tauren", 6, 500, 10000, 2000, 1),
("Troll", 7, 1000, 10000, 100, 5),
("Orc", 8, 6000, 4000, 100, 5),
("Goblin", 9, 1100, 4000, 900, 6),
("Blood Elf", 10,  1500, 3000, 1000, 4),
("Cracthyr", 1, 4500, 1000, 2000, 4);

select * from tb_personagens;

select * from tb_personagens where damage > 2000;
select * from tb_personagens where damage < 2000 AND damage > 1000;

SELECT * FROM tb_personagens WHERE raca LIKE 'C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.fk_classes = tb_classes.id;

SELECT * FROM tb_personagens LEFT JOIN tb_classes
ON tb_personagens.fk_classes = tb_classes.id;

SELECT * FROM tb_personagens RIGHT JOIN tb_classes
ON tb_personagens.fk_classes = tb_classes.id;
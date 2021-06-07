--  Criação de Tabela

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `recuperacao` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `registro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idVacina` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `dataVacinacao` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idVacina` (`idVacina`),
  CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`idVacina`) REFERENCES `vacina` (`id`)
);

CREATE TABLE `vacina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `fabricante` varchar(50) NOT NULL,
  `dose` varchar(50) NOT NULL,
  `origem` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
);

--  Selects

SELECT * FROM   user_info;

SELECT *
FROM   user_info
WHERE  `usuario` LIKE `usuario`;

select id from vacina where fabricante='Sinovac';

select idVacina, nome, dataVacinacao from registro ;

select 
	reg.id, 
	reg.nome,
	reg.dataVacinacao,
	vac.nome,
	vac.fabricante,
	vac.origem,
	vac.dose
from 
	registro reg 
join 
	vacina vac on reg.idVacina = vac.id;

select 
	reg.id,
	reg.nome,
	reg.dataVacinacao,
	vac.nome,
	vac.fabricante,
	vac.origem,
	vac.dose
from 
	registro reg 
join 
	vacina vac on reg.idVacina = vac.id
where reg.id = 1;


select 
	reg.id,
	reg.nome,
	reg.dataVacinacao,
	vac.nome,
	vac.fabricante,
	vac.origem,
	vac.dose
from 
	registro reg 
join 
	vacina vac on reg.idVacina = vac.id
where 
	vac.nome like 'b%'
or 
	reg.nome like 'b%'
or 
	vac.fabricante like 'b%' 
or
	vac.origem like 'b%';

--  Delete e Drops

DELETE FROM user_info;

DROP TABLE registro;
select * from registro;
delete  from registro;

DROP TABLE `vacina`;  
select * from vacina;
delete from vacina;









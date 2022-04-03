CREATE TABLE `Contrato` (
	`id_contrato` INT NOT NULL AUTO_INCREMENT,
	`codigo_contrato` varchar(20),
	`data_contrato` DATE,
	`id_matricula` INT NOT NULL,
	PRIMARY KEY (`id_contrato`)
);

CREATE TABLE `Curso` (
	`id_curso` INT NOT NULL AUTO_INCREMENT,
	`duracao_curso` INT(10),
	`preco_curso` INT(10),
	PRIMARY KEY (`id_curso`)
);

CREATE TABLE `Alunos` (
	`id_aluno` INT NOT NULL AUTO_INCREMENT,
	`nome_aluno` VARCHAR(20),
	`data_nascimento` DATE,
	`telefone_aluno` varchar(14),
	`telefone_recado_aluno` varchar(14) NOT NULL,
	`sexo` varchar(1) NOT NULL,
	`rg` varchar(10),
	`cpf` varchar(11) NOT NULL,
	`cnh` varchar(10),
	`id_endereco` INT,
	`id_contrato` INT,
	PRIMARY KEY (`id_aluno`)
);

CREATE TABLE `Enderecos` (
	`id_endereco` INT NOT NULL AUTO_INCREMENT,
	`id_cidade` INT NOT NULL,
	`pais` varchar(100) NOT NULL,
	`logradouro` varchar(100) NOT NULL,
	`numero` INT(6) NOT NULL,
	`complemento` varchar(100),
	`bairro` varchar(100) NOT NULL,
	`cep` varchar(10) NOT NULL,
	PRIMARY KEY (`id_endereco`)
);

CREATE TABLE `Cidades` (
	`id_cidade` INT NOT NULL AUTO_INCREMENT,
	`nome_cidade` varchar(20),
	`id_estado` INT NOT NULL,
	PRIMARY KEY (`id_cidade`)
);

CREATE TABLE `Estados` (
	`id_estado` INT NOT NULL AUTO_INCREMENT,
	`nome_estado` varchar(20),
	`uf` varchar(2) NOT NULL,
	PRIMARY KEY (`id_estado`)
);

CREATE TABLE `Matriculas` (
	`id_matricula` INT NOT NULL AUTO_INCREMENT,
	`id_aluno` varchar(20),
	`id_curso` INT NOT NULL,
	`data_matricula` DATE NOT NULL,
	`numero_matricula` INT NOT NULL UNIQUE,
	PRIMARY KEY (`id_matricula`)
);

ALTER TABLE `Contrato` ADD CONSTRAINT `Contrato_fk0` FOREIGN KEY (`id_matricula`) REFERENCES `Matriculas`(`id_matricula`);

ALTER TABLE `Alunos` ADD CONSTRAINT `Alunos_fk0` FOREIGN KEY (`id_endereco`) REFERENCES `Enderecos`(`id_endereco`);

ALTER TABLE `Alunos` ADD CONSTRAINT `Alunos_fk1` FOREIGN KEY (`id_contrato`) REFERENCES `Contrato`(`id_contrato`);

ALTER TABLE `Enderecos` ADD CONSTRAINT `Enderecos_fk0` FOREIGN KEY (`id_cidade`) REFERENCES `Cidades`(`id_cidade`);

ALTER TABLE `Cidades` ADD CONSTRAINT `Cidades_fk0` FOREIGN KEY (`id_estado`) REFERENCES `Estados`(`id_estado`);

ALTER TABLE `Matriculas` ADD CONSTRAINT `Matriculas_fk0` FOREIGN KEY (`id_aluno`) REFERENCES `Alunos`(`id_aluno`);

ALTER TABLE `Matriculas` ADD CONSTRAINT `Matriculas_fk1` FOREIGN KEY (`id_curso`) REFERENCES `Curso`(`id_curso`);









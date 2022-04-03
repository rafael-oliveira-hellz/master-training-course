CREATE TABLE "public.Contrato" (
	"id_contrato" serial,
	"codigo_contrato" varchar(20),
	"data_contrato" DATE,
	"id_matricula" integer NOT NULL,
	CONSTRAINT "Contrato_pk" PRIMARY KEY ("id_contrato")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Curso" (
	"id_curso" serial,
	"duracao_curso" integer(10),
	"preco_curso" integer(10),
	CONSTRAINT "Curso_pk" PRIMARY KEY ("id_curso")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Alunos" (
	"id_aluno" serial,
	"nome_aluno" VARCHAR(20),
	"data_nascimento" DATE,
	"telefone_aluno" varchar(14),
	"telefone_recado_aluno" varchar(14) NOT NULL,
	"sexo" varchar(1) NOT NULL,
	"rg" varchar(10),
	"cpf" varchar(11) NOT NULL,
	"cnh" varchar(10),
	"id_endereco" integer,
	"id_contrato" integer,
	CONSTRAINT "Alunos_pk" PRIMARY KEY ("id_aluno")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Enderecos" (
	"id_endereco" serial,
	"id_cidade" integer NOT NULL,
	"pais" varchar(100) NOT NULL,
	"logradouro" varchar(100) NOT NULL,
	"numero" integer(6) NOT NULL,
	"complemento" varchar(100),
	"bairro" varchar(100) NOT NULL,
	"cep" varchar(10) NOT NULL,
	CONSTRAINT "Enderecos_pk" PRIMARY KEY ("id_endereco")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Cidades" (
	"id_cidade" serial,
	"nome_cidade" varchar(20),
	"id_estado" integer NOT NULL,
	CONSTRAINT "Cidades_pk" PRIMARY KEY ("id_cidade")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Estados" (
	"id_estado" serial,
	"nome_estado" varchar(20),
	"uf" varchar(2) NOT NULL,
	CONSTRAINT "Estados_pk" PRIMARY KEY ("id_estado")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Matriculas" (
	"id_matricula" serial,
	"id_aluno" varchar(20),
	"id_curso" integer NOT NULL,
	"data_matricula" DATE NOT NULL,
	"numero_matricula" integer NOT NULL UNIQUE,
	CONSTRAINT "Matriculas_pk" PRIMARY KEY ("id_matricula")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Contrato" ADD CONSTRAINT "Contrato_fk0" FOREIGN KEY ("id_matricula") REFERENCES "Matriculas"("id_matricula");


ALTER TABLE "Alunos" ADD CONSTRAINT "Alunos_fk0" FOREIGN KEY ("id_endereco") REFERENCES "Enderecos"("id_endereco");
ALTER TABLE "Alunos" ADD CONSTRAINT "Alunos_fk1" FOREIGN KEY ("id_contrato") REFERENCES "Contrato"("id_contrato");

ALTER TABLE "Enderecos" ADD CONSTRAINT "Enderecos_fk0" FOREIGN KEY ("id_cidade") REFERENCES "Cidades"("id_cidade");

ALTER TABLE "Cidades" ADD CONSTRAINT "Cidades_fk0" FOREIGN KEY ("id_estado") REFERENCES "Estados"("id_estado");


ALTER TABLE "Matriculas" ADD CONSTRAINT "Matriculas_fk0" FOREIGN KEY ("id_aluno") REFERENCES "Alunos"("id_aluno");
ALTER TABLE "Matriculas" ADD CONSTRAINT "Matriculas_fk1" FOREIGN KEY ("id_curso") REFERENCES "Curso"("id_curso");









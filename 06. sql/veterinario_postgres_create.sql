CREATE TABLE "public.Clientes" (
	"id_cliente" serial NOT NULL,
	"nome_cliente" varchar(100) NOT NULL,
	"data_nascimento" DATE NOT NULL,
	"telefone" varchar(14) NOT NULL,
	"telefone_recado" varchar(14) NOT NULL,
	"sexo" varchar(1) NOT NULL,
	"rg" varchar(10),
	"cpf" varchar(11) NOT NULL,
	"cnh" varchar(10),
	"id_animal" integer NOT NULL,
	"id_endereco" integer NOT NULL,
	"id_consultas" integer NOT NULL,
	CONSTRAINT "Clientes_pk" PRIMARY KEY ("id_cliente")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Consultas" (
	"id_consulta" serial NOT NULL,
	"id_medico" integer NOT NULL,
	"id_cliente" integer NOT NULL,
	"data_consulta" DATETIME NOT NULL,
	CONSTRAINT "Consultas_pk" PRIMARY KEY ("id_consulta")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Animais" (
	"id_animal" serial NOT NULL,
	"nome_animal" varchar(100) NOT NULL,
	"tipo" varchar(20) NOT NULL,
	"raca" varchar(100) NOT NULL,
	"id_cliente" integer NOT NULL,
	CONSTRAINT "Animais_pk" PRIMARY KEY ("id_animal")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Médicos" (
	"id_medico" serial NOT NULL,
	"nome" varchar(120) NOT NULL,
	"especialidade" varchar(50) NOT NULL,
	"crm" varchar(15) NOT NULL,
	CONSTRAINT "Médicos_pk" PRIMARY KEY ("id_medico")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Enderecos" (
	"id_endereco" serial NOT NULL,
	"id_cidade" integer NOT NULL,
	"pais" varchar(100) NOT NULL,
	"logradouro" varchar(100) NOT NULL,
	"numero" integer NOT NULL,
	"complemento" varchar(100),
	"bairro" varchar(100) NOT NULL,
	"cep" varchar(10) NOT NULL,
	CONSTRAINT "Enderecos_pk" PRIMARY KEY ("id_endereco")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Cidades" (
	"id_cidade" serial NOT NULL,
	"nome_cidade" varchar(100) NOT NULL,
	"id_estado" integer NOT NULL,
	CONSTRAINT "Cidades_pk" PRIMARY KEY ("id_cidade")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Estados" (
	"id_estado" serial NOT NULL,
	"nome_estado" varchar(100) NOT NULL,
	"uf" varchar(2) NOT NULL,
	CONSTRAINT "Estados_pk" PRIMARY KEY ("id_estado")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Clientes" ADD CONSTRAINT "Clientes_fk0" FOREIGN KEY ("id_animal") REFERENCES "Animais"("id_animal");
ALTER TABLE "Clientes" ADD CONSTRAINT "Clientes_fk1" FOREIGN KEY ("id_endereco") REFERENCES "Enderecos"("id_endereco");
ALTER TABLE "Clientes" ADD CONSTRAINT "Clientes_fk2" FOREIGN KEY ("id_consultas") REFERENCES "Consultas"("id_consulta");

ALTER TABLE "Consultas" ADD CONSTRAINT "Consultas_fk0" FOREIGN KEY ("id_medico") REFERENCES "Médicos"("id_medico");
ALTER TABLE "Consultas" ADD CONSTRAINT "Consultas_fk1" FOREIGN KEY ("id_cliente") REFERENCES "Clientes"("id_cliente");

ALTER TABLE "Animais" ADD CONSTRAINT "Animais_fk0" FOREIGN KEY ("id_cliente") REFERENCES "Clientes"("id_cliente");


ALTER TABLE "Enderecos" ADD CONSTRAINT "Enderecos_fk0" FOREIGN KEY ("id_cidade") REFERENCES "Cidades"("id_cidade");

ALTER TABLE "Cidades" ADD CONSTRAINT "Cidades_fk0" FOREIGN KEY ("id_estado") REFERENCES "Estados"("id_estado");










CREATE TABLE [Contrato] (
	id_contrato integer,
	codigo_contrato varchar(20),
	data_contrato date,
	id_matricula integer NOT NULL,
  CONSTRAINT [PK_CONTRATO] PRIMARY KEY CLUSTERED
  (
  [id_contrato] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Curso] (
	id_curso integer,
	duracao_curso integer(10),
	preco_curso integer(10),
  CONSTRAINT [PK_CURSO] PRIMARY KEY CLUSTERED
  (
  [id_curso] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Alunos] (
	id_aluno integer,
	nome_aluno string(20),
	data_nascimento date,
	telefone_aluno varchar(14),
	telefone_recado_aluno varchar(14) NOT NULL,
	sexo varchar(1) NOT NULL,
	rg varchar(10),
	cpf varchar(11) NOT NULL,
	cnh varchar(10),
	id_endereco integer,
	id_contrato integer,
  CONSTRAINT [PK_ALUNOS] PRIMARY KEY CLUSTERED
  (
  [id_aluno] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Enderecos] (
	id_endereco integer,
	id_cidade integer NOT NULL,
	pais varchar(100) NOT NULL,
	logradouro varchar(100) NOT NULL,
	numero integer(6) NOT NULL,
	complemento varchar(100),
	bairro varchar(100) NOT NULL,
	cep varchar(10) NOT NULL,
  CONSTRAINT [PK_ENDERECOS] PRIMARY KEY CLUSTERED
  (
  [id_endereco] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Cidades] (
	id_cidade integer,
	nome_cidade varchar(20),
	id_estado integer NOT NULL,
  CONSTRAINT [PK_CIDADES] PRIMARY KEY CLUSTERED
  (
  [id_cidade] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Estados] (
	id_estado integer,
	nome_estado varchar(20),
	uf varchar(2) NOT NULL,
  CONSTRAINT [PK_ESTADOS] PRIMARY KEY CLUSTERED
  (
  [id_estado] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Matriculas] (
	id_matricula integer,
	id_aluno varchar(20),
	id_curso integer NOT NULL,
	data_matricula date NOT NULL,
	numero_matricula integer NOT NULL UNIQUE,
  CONSTRAINT [PK_MATRICULAS] PRIMARY KEY CLUSTERED
  (
  [id_matricula] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [Contrato] WITH CHECK ADD CONSTRAINT [Contrato_fk0] FOREIGN KEY ([id_matricula]) REFERENCES [Matriculas]([id_matricula])
ON UPDATE CASCADE
GO
ALTER TABLE [Contrato] CHECK CONSTRAINT [Contrato_fk0]
GO


ALTER TABLE [Alunos] WITH CHECK ADD CONSTRAINT [Alunos_fk0] FOREIGN KEY ([id_endereco]) REFERENCES [Enderecos]([id_endereco])
ON UPDATE CASCADE
GO
ALTER TABLE [Alunos] CHECK CONSTRAINT [Alunos_fk0]
GO
ALTER TABLE [Alunos] WITH CHECK ADD CONSTRAINT [Alunos_fk1] FOREIGN KEY ([id_contrato]) REFERENCES [Contrato]([id_contrato])
ON UPDATE CASCADE
GO
ALTER TABLE [Alunos] CHECK CONSTRAINT [Alunos_fk1]
GO

ALTER TABLE [Enderecos] WITH CHECK ADD CONSTRAINT [Enderecos_fk0] FOREIGN KEY ([id_cidade]) REFERENCES [Cidades]([id_cidade])
ON UPDATE CASCADE
GO
ALTER TABLE [Enderecos] CHECK CONSTRAINT [Enderecos_fk0]
GO

ALTER TABLE [Cidades] WITH CHECK ADD CONSTRAINT [Cidades_fk0] FOREIGN KEY ([id_estado]) REFERENCES [Estados]([id_estado])
ON UPDATE CASCADE
GO
ALTER TABLE [Cidades] CHECK CONSTRAINT [Cidades_fk0]
GO


ALTER TABLE [Matriculas] WITH CHECK ADD CONSTRAINT [Matriculas_fk0] FOREIGN KEY ([id_aluno]) REFERENCES [Alunos]([id_aluno])
ON UPDATE CASCADE
GO
ALTER TABLE [Matriculas] CHECK CONSTRAINT [Matriculas_fk0]
GO
ALTER TABLE [Matriculas] WITH CHECK ADD CONSTRAINT [Matriculas_fk1] FOREIGN KEY ([id_curso]) REFERENCES [Curso]([id_curso])
ON UPDATE CASCADE
GO
ALTER TABLE [Matriculas] CHECK CONSTRAINT [Matriculas_fk1]
GO


CREATE TABLE [Clientes] (
	id_cliente integer NOT NULL,
	nome_cliente varchar(100) NOT NULL,
	data_nascimento date NOT NULL,
	telefone varchar(14) NOT NULL,
	telefone_recado varchar(14) NOT NULL,
	sexo varchar(1) NOT NULL,
	rg varchar(10),
	cpf varchar(11) NOT NULL,
	cnh varchar(10),
	id_animal integer NOT NULL,
	id_endereco integer NOT NULL,
	id_consultas integer NOT NULL,
  CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED
  (
  [id_cliente] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Consultas] (
	id_consulta integer NOT NULL,
	id_medico integer NOT NULL,
	id_cliente integer NOT NULL,
	data_consulta datetime NOT NULL,
  CONSTRAINT [PK_CONSULTAS] PRIMARY KEY CLUSTERED
  (
  [id_consulta] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Animais] (
	id_animal integer NOT NULL,
	nome_animal varchar(100) NOT NULL,
	tipo varchar(20) NOT NULL,
	raca varchar(100) NOT NULL,
	id_cliente integer NOT NULL,
  CONSTRAINT [PK_ANIMAIS] PRIMARY KEY CLUSTERED
  (
  [id_animal] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Médicos] (
	id_medico integer NOT NULL,
	nome varchar(120) NOT NULL,
	especialidade varchar(50) NOT NULL,
	crm varchar(15) NOT NULL,
  CONSTRAINT [PK_MÉDICOS] PRIMARY KEY CLUSTERED
  (
  [id_medico] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Enderecos] (
	id_endereco integer NOT NULL,
	id_cidade integer NOT NULL,
	pais varchar(100) NOT NULL,
	logradouro varchar(100) NOT NULL,
	numero integer NOT NULL,
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
	id_cidade integer NOT NULL,
	nome_cidade varchar(100) NOT NULL,
	id_estado integer NOT NULL,
  CONSTRAINT [PK_CIDADES] PRIMARY KEY CLUSTERED
  (
  [id_cidade] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Estados] (
	id_estado integer NOT NULL,
	nome_estado varchar(100) NOT NULL,
	uf varchar(2) NOT NULL,
  CONSTRAINT [PK_ESTADOS] PRIMARY KEY CLUSTERED
  (
  [id_estado] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [Clientes] WITH CHECK ADD CONSTRAINT [Clientes_fk0] FOREIGN KEY ([id_animal]) REFERENCES [Animais]([id_animal])
ON UPDATE CASCADE
GO
ALTER TABLE [Clientes] CHECK CONSTRAINT [Clientes_fk0]
GO
ALTER TABLE [Clientes] WITH CHECK ADD CONSTRAINT [Clientes_fk1] FOREIGN KEY ([id_endereco]) REFERENCES [Enderecos]([id_endereco])
ON UPDATE CASCADE
GO
ALTER TABLE [Clientes] CHECK CONSTRAINT [Clientes_fk1]
GO
ALTER TABLE [Clientes] WITH CHECK ADD CONSTRAINT [Clientes_fk2] FOREIGN KEY ([id_consultas]) REFERENCES [Consultas]([id_consulta])
ON UPDATE CASCADE
GO
ALTER TABLE [Clientes] CHECK CONSTRAINT [Clientes_fk2]
GO

ALTER TABLE [Consultas] WITH CHECK ADD CONSTRAINT [Consultas_fk0] FOREIGN KEY ([id_medico]) REFERENCES [Médicos]([id_medico])
ON UPDATE CASCADE
GO
ALTER TABLE [Consultas] CHECK CONSTRAINT [Consultas_fk0]
GO
ALTER TABLE [Consultas] WITH CHECK ADD CONSTRAINT [Consultas_fk1] FOREIGN KEY ([id_cliente]) REFERENCES [Clientes]([id_cliente])
ON UPDATE CASCADE
GO
ALTER TABLE [Consultas] CHECK CONSTRAINT [Consultas_fk1]
GO

ALTER TABLE [Animais] WITH CHECK ADD CONSTRAINT [Animais_fk0] FOREIGN KEY ([id_cliente]) REFERENCES [Clientes]([id_cliente])
ON UPDATE CASCADE
GO
ALTER TABLE [Animais] CHECK CONSTRAINT [Animais_fk0]
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



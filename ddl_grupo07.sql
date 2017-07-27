CREATE TABLE quartos(
  id NUMERIC NOT NULL UNIQUE,
  numero NUMERIC,
  tipo VARCHAR(5),
  vista VARCHAR(10),
  diaria NUMERIC,
  PRIMARY KEY(id)
);

CREATE TABLE clientes(
  nome VARCHAR(15) 	NOT NULL,
  cpf CHAR(11) 		NOT NULL UNIQUE,
  dataNascimento TIMESTAMP,
  sexo CHAR		,
  endereco VARCHAR	,
  telefone CHAR(11)	,
  email VARCHAR(15)	,
  quarto_id NUMERIC NOT NULL,
  PRIMARY KEY(cpf),
  CONSTRAINT quartoUser FOREIGN KEY(quarto_id)
    REFERENCES quartos(id)
);

CREATE TABLE dependentes(
  nome VARCHAR(15) NOT NULL,
  cpf CHAR(11) NOT NULL UNIQUE,
  dataNascimento TIMESTAMP,
  depCpf CHAR(11),
  PRIMARY KEY(cpf),
  CONSTRAINT dependenteId FOREIGN KEY(depCpf)
    REFERENCES clientes(cpf)
      ON DELETE CASCADE
);

CREATE TABLE servicos(
  id NUMERIC NOT NULL UNIQUE,
  valor NUMERIC
);

CREATE TABLE produtos(
  id NUMERIC NOT NULL UNIQUE,
  nome VARCHAR(20),
  tipo VARCHAR(11),
  descricao VARCHAR(140),
  quarto_id NUMERIC NOT NULL,
  servico_id NUMERIC NOT NULL,
  valor NUMERIC,
  PRIMARY KEY(id),
  CONSTRAINT quartoProd FOREIGN KEY(quarto_id)
    REFERENCES quartos(id)
      ON DELETE CASCADE,
  CONSTRAINT servicoId FOREIGN KEY(servico_id)
    REFERENCES servicos(id)
      ON DELETE CASCADE
);


CREATE TABLE quartos(
  quarto_id NUMERIC NOT NULL,
  numero NUMERIC,
  tipo VARCHAR(5),
  vista VARCHAR(10),
  diaria NUMERIC,
  PRIMARY KEY(quarto_id)
);

CREATE TABLE clientes(
  nome VARCHAR(15) 	NOT NULL,
  cpf CHAR(11) 		NOT NULL,
  dataNascimento TIMESTAMP,
  sexo CHAR(1)		,
  endereco VARCHAR(100)	,
  telefone CHAR(11)	,
  email VARCHAR(15)	,
  quarto_id NUMERIC NOT NULL,
  PRIMARY KEY(cpf),
  CONSTRAINT quartoUser FOREIGN KEY(quarto_id)
    REFERENCES quartos(quarto_id)
);

CREATE TABLE dependentes(
  nome VARCHAR(15) NOT NULL,
  dependente_cpf CHAR(11) NOT NULL,
  dataNascimento TIMESTAMP,
  depCpf CHAR(11),
  PRIMARY KEY(dependente_cpf),
  CONSTRAINT dependenteId FOREIGN KEY(depCpf)
    REFERENCES clientes(cpf)
      ON DELETE CASCADE
);

CREATE TABLE servicos(
  servico_id NUMERIC NOT NULL,
  valor NUMERIC,
  PRIMARY KEY(servico_id)
);

CREATE TABLE produtos(
  produto_id NUMERIC NOT NULL,
  nome VARCHAR(20),
  tipo VARCHAR(11),
  descricao VARCHAR(140),
  quarto_id NUMERIC NOT NULL,
  servico_id NUMERIC NOT NULL,
  valor NUMERIC,
  PRIMARY KEY(produto_id),
  CONSTRAINT quartoProd FOREIGN KEY(quarto_id)
    REFERENCES quartos(quarto_id)
      ON DELETE CASCADE,
  CONSTRAINT servicoId FOREIGN KEY(servico_id)
    REFERENCES servicos(servico_id)
      ON DELETE CASCADE
);


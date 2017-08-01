CREATE TABLE Quarto(
  quarto_id NUMERIC NOT NULL,
  numero NUMERIC,
  tipo VARCHAR(10),
  vista VARCHAR(10),
  diaria NUMERIC,
  PRIMARY KEY(quarto_id)
);

CREATE TABLE Cliente(
  nome VARCHAR(50) 	NOT NULL,
  cpf CHAR(11) 		NOT NULL,
  dataNascimento TIMESTAMP,
  sexo CHAR(1)		,
  endereco VARCHAR(100)	,
  telefone CHAR(11)	,
  email VARCHAR(30)	,
  quartoId NUMERIC NOT NULL,
  PRIMARY KEY(cpf),
  CONSTRAINT quartoUser FOREIGN KEY(quartoId)
    REFERENCES Quarto(quarto_id)
);

CREATE TABLE Dependente(
  nome VARCHAR(50) NOT NULL,
  dependente_cpf CHAR(11) NOT NULL,
  dataNascimento TIMESTAMP,
  depCpf CHAR(11),
  PRIMARY KEY(dependente_cpf),
  CONSTRAINT dependenteId FOREIGN KEY(depCpf)
    REFERENCES Cliente(cpf)
      ON DELETE CASCADE
);

CREATE TABLE Servico(
  servico_id NUMERIC NOT NULL,
  valor NUMERIC,
  PRIMARY KEY(servico_id)
);

CREATE TABLE Produto(
  produto_id NUMERIC NOT NULL,
  nome VARCHAR(50),
  tipo VARCHAR(11),
  descricao VARCHAR(140),
  quarto_id NUMERIC NOT NULL,
  servico_id NUMERIC NOT NULL,
  valor NUMERIC,
  PRIMARY KEY(produto_id),
  CONSTRAINT quartoProd FOREIGN KEY(quarto_id)
    REFERENCES Quarto(quarto_id)
      ON DELETE CASCADE,
  CONSTRAINT servicoId FOREIGN KEY(servico_id)
    REFERENCES Servico(servico_id)
      ON DELETE CASCADE
);

CREATE TABLE Funcionario(
  nome VARCHAR(50) 	NOT NULL,
  cpf CHAR(11) 		NOT NULL,
  salario               DECIMAL(10,2),
  data_nascimento       DATE NOT NULL,
  funcao                VARCHAR(30),
  PRIMARY KEY(cpf)
);

CREATE TABLE NotaFiscal(
  id_nota NUMERIC 	NOT NULL,
  data_entrada          DATE NOT NULL,
  data_saida            DATE NOT NULL,
  valor                 DECIMAL(10,2) NOT NULL
);
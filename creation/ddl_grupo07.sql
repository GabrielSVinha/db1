/** ENTIDADES **/

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

/* RELACOES */

CREATE TABLE Hospedagem(
  hospedagem_id NUMERIC NOT NULL,
  quarto_id NUMERIC NOT NULL,
  cliente_cpf CHAR(11) NOT NULL,
  data_inicio DATE NOT NULL,
  data_fim DATE NOT NULL,
  PRIMARY KEY(hospedagem_id),
  CONSTRAINT quarto_hospedagem_id FOREIGN KEY(quarto_id)
    REFERENCES Quarto(quarto_id)
      ON DELETE CASCADE,
  CONSTRAINT cliente_hospedagem_cpf FOREIGN KEY(cliente_cpf)
    REFERENCES Cliente(cpf)
      ON DELETE CASCADE
);

CREATE TABLE Reserva(
  reserva_id NUMERIC NOT NULL,
  quarto_id NUMERIC NOT NULL,
  cliente_cpf CHAR(11) NOT NULL,
  data_inicio DATE NOT NULL,
  data_fim DATE NOT NULL,
  PRIMARY KEY(reserva_id),
  CONSTRAINT quarto_reserva_id FOREIGN KEY(quarto_id)
    REFERENCES Quarto(quarto_id)
      ON DELETE CASCADE,
  CONSTRAINT cliente_reserva_cpf FOREIGN KEY(cliente_cpf)
    REFERENCES Cliente(cpf)
      ON DELETE CASCADE
);

CREATE TABLE Avaliacao(
  avaliacao_id NUMERIC NOT NULL,
  cliente_cpf CHAR(11) NOT NULL,
  servico_id NUMERIC NOT NULL,
  nota NUMERIC NOT NULL,
  comentario VARCHAR(150),
  PRIMARY KEY(avaliacao_id),
  CONSTRAINT avaliacao_cliente_cpf FOREIGN KEY(cliente_cpf)
    REFERENCES Cliente(cpf)
      ON DELETE CASCADE,
  CONSTRAINT avaliacao_servico_id FOREIGN KEY(servico_id)
    REFERENCES Servico(servico_id)
      ON DELETE CASCADE
);

CREATE TABLE Venda(
  venda_id NUMERIC NOT NULL,
  quarto_id NUMERIC NOT NULL,
  produto_id NUMERIC NOT NULL,
  data DATE NOT NULL,
  quantidade NUMERIC NOT NULL,
  PRIMARY KEY(venda_id),
  CONSTRAINT venda_quarto_id FOREIGN KEY(quarto_id)
    REFERENCES Quarto(quarto_id)
      ON DELETE CASCADE,
  CONSTRAINT venda_produto_id FOREIGN KEY(produto_id)
    REFERENCES Produto(produto_id)
      ON DELETE CASCADE
);


/** ENTIDADES **/

CREATE TABLE Quarto(
  quarto_id INT NOT NULL,
  numero VARCHAR(10) NOT NULL,
  tipo VARCHAR(10),
  vista VARCHAR(10),
  diaria DECIMAL(10,2),
  PRIMARY KEY(quarto_id),
  CONSTRAINT diaria_valida CHECK(diaria >= 0)
);

CREATE TABLE Cliente(
  cpf CHAR(11) 		NOT NULL,
  nome VARCHAR(50) 	NOT NULL,
  data_nascimento DATE,
  sexo CHAR(1),
  rua VARCHAR(100),
  numero INT,
  bairro VARCHAR(30),
  cep CHAR(8),
  email VARCHAR(50),
  quarto_id INT NOT NULL,
  PRIMARY KEY(cpf),
  CONSTRAINT sexo_valido CHECK(UPPER(sexo) IN ('M', 'F')),
  CONSTRAINT cpf_valido CHECK(LENGTH(cpf) = 11),
  CONSTRAINT cliente_quarto_fk FOREIGN KEY(quarto_id)
    REFERENCES Quarto(quarto_id)
);

CREATE TABLE Dependente(
  nome VARCHAR(50) NOT NULL,
  dependente_cpf CHAR(11) NOT NULL,
  data_nascimento DATE,
  cliente_cpf CHAR(11),
  PRIMARY KEY(dependente_cpf),
  CONSTRAINT dependente_cliente_fk FOREIGN KEY(cliente_cpf)
    REFERENCES Cliente(cpf)
      ON DELETE CASCADE
);

CREATE TABLE Servico(
  servico_id INT NOT NULL,
  valor DECIMAL(10,2),
  possui_produto CHAR NOT NULL,
  tipo_servico VARCHAR(30),
  PRIMARY KEY(servico_id),
  CONSTRAINT possui_valida CHECK(possui_produto IN ('0', '1')),
  CONSTRAINT verifica_possui CHECK((possui_produto = '0' AND valor IS NOT NULL)
    OR (valor is NULL AND possui_produto = '1'))
);

CREATE TABLE Produto(
  produto_id INT NOT NULL,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(100),
  valor DECIMAL(10,2),
  quarto_id INT NOT NULL,
  servico_id INT NOT NULL,
  PRIMARY KEY(produto_id),
  CONSTRAINT produto_quarto_fk FOREIGN KEY(quarto_id)
    REFERENCES Quarto(quarto_id)
      ON DELETE CASCADE,
  CONSTRAINT produto_servico_fk FOREIGN KEY(servico_id)
    REFERENCES Servico(servico_id)
      ON DELETE CASCADE,
  CONSTRAINT valor_valido CHECK(valor >= 0)
);

CREATE TABLE Funcionario(
  cpf CHAR(11) 		NOT NULL,
  nome VARCHAR(50) 	NOT NULL,
  salario               DECIMAL(10,2),
  data_nascimento       DATE,
  funcao                VARCHAR(30),
  PRIMARY KEY(cpf),
  CONSTRAINT salario_valido CHECK(salario >= 0)
);

CREATE TABLE NotaFiscal(
  id_nota INT 	NOT NULL,
  data_entrada          DATE NOT NULL,
  data_saida            DATE NOT NULL,
  valor                 DECIMAL(10,2) NOT NULL
);

/* RELACOES */

CREATE TABLE Hospedagem(
  quarto_id INT NOT NULL,
  cliente_cpf CHAR(11) NOT NULL,
  data_inicio DATE NOT NULL,
  data_fim DATE NOT NULL,
  PRIMARY KEY(cliente_cpf, quarto_id),
  CONSTRAINT hospedagem_quarto_fk FOREIGN KEY(quarto_id)
    REFERENCES Quarto(quarto_id)
      ON DELETE CASCADE,
  CONSTRAINT hospedagem_cliente_fk FOREIGN KEY(cliente_cpf)
    REFERENCES Cliente(cpf)
      ON DELETE CASCADE,
  CONSTRAINT verifica_hospedagem CHECK(data_fim >= data_inicio)
);

CREATE TABLE Reserva(
  quarto_id INT NOT NULL,
  cliente_cpf CHAR(11) NOT NULL,
  data_inicio DATE NOT NULL,
  data_fim DATE NOT NULL,
  PRIMARY KEY(cliente_cpf, quarto_id),
  CONSTRAINT reserva_quarto_fk FOREIGN KEY(quarto_id)
    REFERENCES Quarto(quarto_id)
      ON DELETE CASCADE,
  CONSTRAINT reserva_cliente_fk FOREIGN KEY(cliente_cpf)
    REFERENCES Cliente(cpf)
      ON DELETE CASCADE,
  CONSTRAINT verifica_reserva CHECK(data_fim >= data_inicio)
);

CREATE TABLE Avaliacao(
  cliente_cpf CHAR(11) NOT NULL,
  servico_id INT NOT NULL,
  nota INT NOT NULL,
  comentario VARCHAR(250),
  PRIMARY KEY(cliente_cpf, servico_id),
  CONSTRAINT avaliacao_cliente_fk FOREIGN KEY(cliente_cpf)
    REFERENCES Cliente(cpf)
      ON DELETE CASCADE,
  CONSTRAINT avaliacao_servico_fk FOREIGN KEY(servico_id)
    REFERENCES Servico(servico_id)
      ON DELETE CASCADE
);

CREATE TABLE Venda(
  quarto_id INT NOT NULL,
  produto_id INT NOT NULL,
  data DATE,
  quantidade INT NOT NULL,
  PRIMARY KEY(quarto_id, produto_id),
  CONSTRAINT venda_quarto_fk FOREIGN KEY(quarto_id)
    REFERENCES Quarto(quarto_id)
      ON DELETE CASCADE,
  CONSTRAINT venda_produto_fk FOREIGN KEY(produto_id)
    REFERENCES Produto(produto_id)
      ON DELETE CASCADE
);

CREATE TABLE ServicoPrestado(
  funcionario_cpf CHAR(11) NOT NULL,
  servico_id INT NOT NULL,
  PRIMARY KEY(funcionario_cpf, servico_id),
  FOREIGN KEY (funcionario_cpf) REFERENCES Funcionario(cpf) ON DELETE CASCADE ,
  FOREIGN KEY (servico_id) REFERENCES Servico(servico_id) ON DELETE CASCADE 
);

CREATE TABLE Telefone(
  cliente_cpf CHAR(11) NOT NULL,
  telefone_1 VARCHAR(20) NOT NULL,
  telefone_2 VARCHAR(20) NULL,
  PRIMARY KEY(cliente_cpf, telefone_1),
  FOREIGN KEY (cliente_cpf) REFERENCES Cliente(cpf) ON DELETE CASCADE 
);

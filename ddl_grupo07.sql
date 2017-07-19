CREATE TABLE clientes(
  nome VARCHAR(15) 	NOT NULL,
  cpf CHAR(11) 		NOT NULL UNIQUE,
  dataNascimento TIMESTAMP,
  sexo CHAR		,
  endereco VARCHAR	,
  telefone CHAR(11)	,
  email VARCHAR(15)	,
  PRIMARY KEY(cpf)
)

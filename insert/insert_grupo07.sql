-- Criando sequence para o cpf
CREATE SEQUENCE cpf_seq
    MINVALUE 1
    MAXVALUE 99999999999
    INCREMENT BY 1
    START WITH 1
    ORDER
    CYCLE;

-- Inserts abaixo

--- clientes
INSERT INTO cliente(cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'KAIO',      '01-20-1995', 'M', 'Rua das Jabuticabeiras',          100,  'MALVINAS',         '58100000', 'kaio@ccc.ufcg.edu.br');
    
INSERT INTO cliente(cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'LUCAS',     '02-23-1994', 'M', 'Rua das Umburanas',               523,  'MALVINAS',         '58100000', 'lucas@ccc.ufcg.edu.br');
    
INSERT INTO cliente(cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'GABRIEL',   '03-14-1994', 'M', 'Rua Xique-Xique',                 1542, 'ROCHA CAVALCANTE', '58100000', 'gabriel@ccc.ufcg.edu.br');
    
INSERT INTO cliente(cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'ITALO',     '04-12-1995', 'M', 'Rua Recife',                      12,   'LIBERDADE',        '58100000', 'italo@ccc.ufcg.edu.br');
    
INSERT INTO cliente(cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'JAAZIEL',   '05-05-1992', 'M', 'Rua Aprigio Pereira Nepomuceno',  227,  'CRUZEIRO',           '58100000', 'jaaziel@ccc.ufcg.edu.br');
    
INSERT INTO cliente(cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'ALEXANDRO', '06-16-1993', 'M', 'Av Mal Floriano Peixoto',         450,  'SAO JOSE',         '58100000', 'alexandro@ccc.ufcg.edu.br');
    
INSERT INTO cliente(cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'FILIPE',    '07-15-1995', 'M', 'Av Almirante Barroso',            221,  'QUARENTA',         '58100000', 'filipe@ccc.ufcg.edu.br');
    
INSERT INTO cliente(cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'ZEUS',      '08-30-1990', 'M', 'Rua Rio de Janeiro',              75,   'LIBERDADE',        '58100000', 'zeus@ccc.ufcg.edu.br');
    
INSERT INTO cliente(cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'VANDERLAN', '09-29-1992', 'M', 'Rua Olindina Pereira dos Santos', 97,   'MALVINAS',         '58100000', 'vanderlan@ccc.ufcg.edu.br');
    
INSERT INTO cliente(cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'DIEGO',     '10-03-1992', 'M', 'Rua Cecilia de Araujo',           556,  'TRES IRMAS',       '58100000', 'diego@ccc.ufcg.edu.br');


--- quarto
INSERT INTO quarto(id_quarto, numero, tipo, vista, diaria) VALUES(1, 101, 'Suíte', 'Frontal', 100.00);
INSERT INTO quarto(id_quarto, numero, tipo, vista, diaria) VALUES(2, 102, 'Suíte', 'Lateral', 100.00);
INSERT INTO quarto(id_quarto, numero, tipo, vista, diaria) VALUES(3, 103, 'Cobertura', 'Cobertura', 200.00);
INSERT INTO quarto(id_quarto, numero, tipo, vista, diaria) VALUES(4, 104, 'Cobertura', 'Frontal', 200.00);
INSERT INTO quarto(id_quarto, numero, tipo, vista, diaria) VALUES(5, 105, 'Presidencial', 'Plana', 300.00);

--- funcionario
INSERT INTO funcionario(cpf, nome, salario, data_nasc, funcao) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'THIAGO',    600.00,  '03-30-1980', 'Faxineiro Auxiliar');
INSERT INTO funcionario(cpf, nome, salario, data_nasc, funcao) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'MATHEUS',   650.00,  '12-27-1981', 'Faxineiro');
INSERT INTO funcionario(cpf, nome, salario, data_nasc, funcao) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'FRANKLIN',  700.00,  '07-05-1982', 'Faxineiro');
INSERT INTO funcionario(cpf, nome, salario, data_nasc, funcao) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'EVERTON',   700.00,  '06-07-1983', 'Bartender');
INSERT INTO funcionario(cpf, nome, salario, data_nasc, funcao) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'DALTON',    700.00,  '11-22-1984', 'Zelador');
INSERT INTO funcionario(cpf, nome, salario, data_nasc, funcao) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'JOAO',      800.00,  '10-14-1980', 'Recepcionista');
INSERT INTO funcionario(cpf, nome, salario, data_nasc, funcao) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'JORGE',     400.00,  '06-17-1981', 'Garçom');
INSERT INTO funcionario(cpf, nome, salario, data_nasc, funcao) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'ELIANE',    1700.00, '07-20-1982', 'Segurança');
INSERT INTO funcionario(cpf, nome, salario, data_nasc, funcao) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'ANDREY',    1700.00, '02-09-1983', 'Segurança');
INSERT INTO funcionario(cpf, nome, salario, data_nasc, funcao) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), 'JOSEANA',   1700.00, '05-01-1984', 'Segurança');

--- dependente
INSERT INTO dependente(cpf, titular, nome, data_nasc) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), '00000000001', 'ELMAR',    '03-20-1980');
INSERT INTO dependente(cpf, titular, nome, data_nasc) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), '00000000002', 'BAPTISTA', '01-07-1981');
INSERT INTO dependente(cpf, titular, nome, data_nasc) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), '00000000003', 'EANES',    '12-18-1982');
INSERT INTO dependente(cpf, titular, nome, data_nasc) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), '00000000004', 'PATRICIA', '07-10-1983');
INSERT INTO dependente(cpf, titular, nome, data_nasc) VALUES(TO_CHAR(cpf_seq.nextval, 'FM00000000000'), '00000000005', 'KYLLER',   '05-02-1989');

--- servico
INSERT INTO servico(id_servico, valor) VALUES(1,  73);
INSERT INTO servico(id_servico, valor) VALUES(2,  44);
INSERT INTO servico(id_servico, valor) VALUES(3,  85);
INSERT INTO servico(id_servico, valor) VALUES(4,  38);
INSERT INTO servico(id_servico, valor) VALUES(5,  51);
INSERT INTO servico(id_servico, valor) VALUES(6,  62);
INSERT INTO servico(id_servico, valor) VALUES(7,  39);
INSERT INTO servico(id_servico, valor) VALUES(8,  40);
INSERT INTO servico(id_servico, valor) VALUES(9,  59);
INSERT INTO servico(id_servico, valor) VALUES(10, 18);
INSERT INTO servico(id_servico, valor) VALUES(11, 100);
INSERT INTO servico(id_servico, valor) VALUES(12, 200);
INSERT INTO servico(id_servico, valor) VALUES(13, 800);
INSERT INTO servico(id_servico, valor) VALUES(14, 400);
INSERT INTO servico(id_servico, valor) VALUES(15, 150);
INSERT INTO servico(id_servico, valor) VALUES(16, 20);
INSERT INTO servico(id_servico, valor) VALUES(17, 20);
INSERT INTO servico(id_servico, valor) VALUES(18, 20);
INSERT INTO servico(id_servico, valor) VALUES(19, 20);
INSERT INTO servico(id_servico, valor) VALUES(20, 20);
INSERT INTO servico(id_servico, valor) VALUES(21, 3);
INSERT INTO servico(id_servico, valor) VALUES(22, 3);
INSERT INTO servico(id_servico, valor) VALUES(23, 3);
INSERT INTO servico(id_servico, valor) VALUES(24, 3);
INSERT INTO servico(id_servico, valor) VALUES(25, 3);
INSERT INTO servico(id_servico, valor) VALUES(26, 3);
INSERT INTO servico(id_servico, valor) VALUES(27, 3);
INSERT INTO servico(id_servico, valor) VALUES(28, 3);
INSERT INTO servico(id_servico, valor) VALUES(29, 3);
INSERT INTO servico(id_servico, valor) VALUES(30, 3);

--- reserva
INSERT INTO reserva(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('03-30-2016', '04-03-2016', '00000000001', 1);
INSERT INTO reserva(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('01-07-2016', '01-28-2016', '00000000002', 2);
INSERT INTO reserva(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('06-16-2017', '06-17-2017', '00000000003', 3);
INSERT INTO reserva(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('01-20-2016', '02-20-2016', '00000000004', 4);
INSERT INTO reserva(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('07-15-2016', '07-22-2016', '00000000005', 5);
INSERT INTO reserva(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('12-13-2016', '12-19-2016', '00000000006', 1);
INSERT INTO reserva(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('03-10-2016', '03-19-2016', '00000000007', 2);
INSERT INTO reserva(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('01-07-2016', '01-10-2016', '00000000008', 3);
INSERT INTO reserva(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('06-09-2017', '08-09-2017', '00000000009', 4);
INSERT INTO reserva(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('12-30-2017', '01-07-2018', '00000000010', 5);

--- hospedagem
INSERT INTO hospedagem(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('03-30-2016', '04-03-2016', '00000000001', 1);
INSERT INTO hospedagem(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('01-07-2016', '01-28-2016', '00000000002', 2);
INSERT INTO hospedagem(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('06-16-2017', '06-17-2017', '00000000003', 3);
INSERT INTO hospedagem(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('01-20-2016', '02-20-2016', '00000000004', 4);
INSERT INTO hospedagem(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('07-15-2016', '07-22-2016', '00000000005', 5);
INSERT INTO hospedagem(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('12-13-2016', '12-19-2016', '00000000006', 1);
INSERT INTO hospedagem(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('03-10-2017', '03-19-2017', '00000000007', 2);
INSERT INTO hospedagem(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('01-07-2016', '01-10-2016', '00000000008', 3);
INSERT INTO hospedagem(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('06-09-2017', '08-09-2017', '00000000009', 4);
INSERT INTO hospedagem(data_inicio, data_fim, cpf_cliente, id_quarto) VALUES('12-30-2017', '01-07-2018', '00000000010', 5);

--- servico_prestado
INSERT INTO servico_prestado(cpf_func, id_servico) VALUES('00000000011', 1);
INSERT INTO servico_prestado(cpf_func, id_servico) VALUES('00000000012', 2);
INSERT INTO servico_prestado(cpf_func, id_servico) VALUES('00000000013', 3);
INSERT INTO servico_prestado(cpf_func, id_servico) VALUES('00000000014', 4);
INSERT INTO servico_prestado(cpf_func, id_servico) VALUES('00000000015', 5);
INSERT INTO servico_prestado(cpf_func, id_servico) VALUES('00000000016', 6);
INSERT INTO servico_prestado(cpf_func, id_servico) VALUES('00000000017', 7);
INSERT INTO servico_prestado(cpf_func, id_servico) VALUES('00000000018', 8);
INSERT INTO servico_prestado(cpf_func, id_servico) VALUES('00000000019', 9);
INSERT INTO servico_prestado(cpf_func, id_servico) VALUES('00000000020', 10);

--- servicos_tipo
INSERT INTO restaurante(id_rest)        VALUES(5);
INSERT INTO frigobar(id_frigobar)       VALUES(2);
INSERT INTO lavanderia(id_lavanderia)   VALUES(3);
INSERT INTO bar(id_bar)                 VALUES(4);

--- produto
INSERT INTO produto(id_produto, nome, descricao, valor)                 VALUES(1, 'Rolo de Papel',     'Para se limpar',               5.00);
INSERT INTO produto(id_produto, nome, descricao, valor)                 VALUES(2, 'Escova de Dente',   'Para escovar os dentes',       2.00);
INSERT INTO produto(id_produto, nome, descricao, valor)                 VALUES(3, 'Shampoo',           'Para lavar o cabelo',          8.00);
INSERT INTO produto(id_produto, nome, descricao, valor, id_frigobar)    VALUES(4, 'Chocolate',         'Gostoso',                      20.00, 2);
INSERT INTO produto(id_produto, nome, descricao, valor, id_bar)         VALUES(5, 'Absolut Vodka',     'DRINK ME!',                    80.00, 4);
INSERT INTO produto(id_produto, nome, valor, id_frigobar)               VALUES(6, 'Masculinidade',     1000.00, 2);
INSERT INTO produto(id_produto, nome, valor, id_lavanderia)             VALUES(7, 'Roupa Limpa',       10.00, 3);

--- vendas
INSERT INTO venda(id_produto, id_quarto, quantidade) VALUES(1, 2, 3);
INSERT INTO venda(id_produto, id_quarto, quantidade) VALUES(2, 1, 1);
INSERT INTO venda(id_produto, id_quarto, quantidade) VALUES(2, 2, 3);
INSERT INTO venda(id_produto, id_quarto, quantidade) VALUES(3, 1, 1);
INSERT INTO venda(id_produto, id_quarto, quantidade) VALUES(3, 5, 3);
INSERT INTO venda(id_produto, id_quarto, quantidade) VALUES(4, 4, 10);
INSERT INTO venda(id_produto, id_quarto, quantidade) VALUES(5, 2, 1);
INSERT INTO venda(id_produto, id_quarto, quantidade) VALUES(6, 3, 1);
INSERT INTO venda(id_produto, id_quarto, quantidade) VALUES(7, 1, 1);
INSERT INTO venda(id_produto, id_quarto, quantidade) VALUES(7, 3, 2);

--- avaliacao
INSERT INTO avaliacao(id_servico, cpf_cliente, nota, comentario) VALUES(1, '00000000001', 7,   'bom atendimento');
INSERT INTO avaliacao(id_servico, cpf_cliente, nota, comentario) VALUES(2, '00000000002', 6,   'poderia melhorar');
INSERT INTO avaliacao(id_servico, cpf_cliente, nota, comentario) VALUES(3, '00000000003', 8,   'gostei muito. recepcionista bacana');
INSERT INTO avaliacao(id_servico, cpf_cliente, nota, comentario) VALUES(4, '00000000004', 9.5, 'ADOREI, PRETENDO REPETIR');
INSERT INTO avaliacao(id_servico, cpf_cliente, nota, comentario) VALUES(5, '00000000005', 3,   'nao gostei, a comida estava fria');
INSERT INTO avaliacao(id_servico, cpf_cliente, nota, comentario) VALUES(6, '00000000006', 6,   'nao sei se volto mais vezes, mas o servico estava bom');
INSERT INTO avaliacao(id_servico, cpf_cliente, nota, comentario) VALUES(3, '00000000007', 3,   'nao gostei');
INSERT INTO avaliacao(id_servico, cpf_cliente, nota, comentario) VALUES(4, '00000000008', 7,   'foi bom');
INSERT INTO avaliacao(id_servico, cpf_cliente, nota, comentario) VALUES(5, '00000000009', 9,   'TOP');

--- telefone
INSERT INTO telefone(telefone, cpf_cliente) VALUES('83998647582', '00000000001');
INSERT INTO telefone(telefone, cpf_cliente) VALUES('83981627384', '00000000002');
INSERT INTO telefone(telefone, cpf_cliente) VALUES('83993049283', '00000000003');
INSERT INTO telefone(telefone, cpf_cliente) VALUES('84978273182', '00000000004');
INSERT INTO telefone(telefone, cpf_cliente) VALUES('87987237456', '00000000005');
INSERT INTO telefone(telefone, cpf_cliente) VALUES('84962381236', '00000000006');
INSERT INTO telefone(telefone, cpf_cliente) VALUES('83998765301', '00000000007');
INSERT INTO telefone(telefone, cpf_cliente) VALUES('11946574820', '00000000008');
INSERT INTO telefone(telefone, cpf_cliente) VALUES('21961728304', '00000000009');
INSERT INTO telefone(telefone, cpf_cliente) VALUES('87998162374', '00000000010');

--- equipamento
INSERT INTO equipamento(equipamento, id_quarto) VALUES('ar condicionado', 1);
INSERT INTO equipamento(equipamento, id_quarto) VALUES('ar condicionado', 2);
INSERT INTO equipamento(equipamento, id_quarto) VALUES('ar condicionado', 3);
INSERT INTO equipamento(equipamento, id_quarto) VALUES('ar condicionado', 4);
INSERT INTO equipamento(equipamento, id_quarto) VALUES('televisao', 1);
INSERT INTO equipamento(equipamento, id_quarto) VALUES('televisao', 2);
INSERT INTO equipamento(equipamento, id_quarto) VALUES('televisao', 3);
INSERT INTO equipamento(equipamento, id_quarto) VALUES('televisao', 4);

--- passeio turistico
INSERT INTO passeio_turistico(id_passeio) VALUES(16);
INSERT INTO passeio_turistico(id_passeio) VALUES(17);
INSERT INTO passeio_turistico(id_passeio) VALUES(18);
INSERT INTO passeio_turistico(id_passeio) VALUES(19);
INSERT INTO passeio_turistico(id_passeio) VALUES(20);

--- estacionamento
INSERT INTO estacionamento(id_estacionamento) VALUES(21);
INSERT INTO estacionamento(id_estacionamento) VALUES(22);
INSERT INTO estacionamento(id_estacionamento) VALUES(23);
INSERT INTO estacionamento(id_estacionamento) VALUES(24);
INSERT INTO estacionamento(id_estacionamento) VALUES(25);
INSERT INTO estacionamento(id_estacionamento) VALUES(26);
INSERT INTO estacionamento(id_estacionamento) VALUES(27);
INSERT INTO estacionamento(id_estacionamento) VALUES(28);
INSERT INTO estacionamento(id_estacionamento) VALUES(29);
INSERT INTO estacionamento(id_estacionamento) VALUES(30);

--- nota_fiscal
INSERT INTO nota_fiscal(id_nota, cpf_cliente, id_quarto, dt_in, dt_out, valor_nota) VALUES(00001,  '00000000001', 1, '03-30-2016', '04-03-2016', 616);
INSERT INTO nota_fiscal(id_nota, cpf_cliente, id_quarto, dt_in, dt_out, valor_nota) VALUES(00002,  '00000000002', 2, '01-07-2016', '01-28-2016', 2268);
INSERT INTO nota_fiscal(id_nota, cpf_cliente, id_quarto, dt_in, dt_out, valor_nota) VALUES(00003,  '00000000003', 3, '06-16-2017', '06-17-2017', 1328);
INSERT INTO nota_fiscal(id_nota, cpf_cliente, id_quarto, dt_in, dt_out, valor_nota) VALUES(00004,  '00000000004', 4, '01-20-2016', '02-20-2016', 6261);
INSERT INTO nota_fiscal(id_nota, cpf_cliente, id_quarto, dt_in, dt_out, valor_nota) VALUES(00005,  '00000000005', 5, '07-15-2016', '07-22-2016', 398);
INSERT INTO nota_fiscal(id_nota, cpf_cliente, id_quarto, dt_in, dt_out, valor_nota) VALUES(00006,  '00000000006', 1, '12-13-2016', '12-19-2016', 685);
INSERT INTO nota_fiscal(id_nota, cpf_cliente, id_quarto, dt_in, dt_out, valor_nota) VALUES(00007,  '00000000007', 2, '03-10-2017', '03-19-2017', 1043);
INSERT INTO nota_fiscal(id_nota, cpf_cliente, id_quarto, dt_in, dt_out, valor_nota) VALUES(00008,  '00000000008', 3, '01-07-2016', '01-10-2016', 1663);
INSERT INTO nota_fiscal(id_nota, cpf_cliente, id_quarto, dt_in, dt_out, valor_nota) VALUES(00009,  '00000000009', 4, '06-09-2017', '08-09-2017', 12262);
INSERT INTO nota_fiscal(id_nota, cpf_cliente, id_quarto, dt_in, dt_out, valor_nota) VALUES(00010,  '00000000010', 5, '12-30-2017', '01-07-2018', 2445);
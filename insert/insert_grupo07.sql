CREATE SEQUENCE cpfSequence
    START WITH 00000000001
    MINVALUE 00000000000
    MAXVALUE 99999999999
    NOCYCLE
    INCREMENT BY 1;

INSERT INTO cliente (cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
        VALUES (TO_CHAR(cpfSequence.nextVal, '0000000000'), 'KAIO',      '01-20-1995', 'M', 'RUA DAS JABUTICABEIRAS',          100,  'MALVINAS',         '58100000', 'kaio@ccc.ufcg.edu.br');
    
INSERT INTO cliente (cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
        VALUES (TO_CHAR(cpfSequence.nextVal, '0000000000'), 'LUCAS',     '02-23-1994', 'M', 'RUA DAS UMBURANAS',               523,  'MALVINAS',         '58100000', 'lucas@ccc.ufcg.edu.br');
    
INSERT INTO cliente (cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
        VALUES (TO_CHAR(cpfSequence.nextVal, '0000000000'), 'GABRIEL',   '03-14-1994', 'M', 'RUA XIQUE-XIQUE',                 1542, 'ROCHA CAVALCANTE', '58100000', 'gabriel@ccc.ufcg.edu.br');
    
INSERT INTO cliente (cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
        VALUES (TO_CHAR(cpfSequence.nextVal, '0000000000'), 'ITALO',     '04-12-1995', 'M', 'RUA RECIFE',                      12,   'LIBERDADE',        '58100000', 'italo@ccc.ufcg.edu.br');
    
INSERT INTO cliente (cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
        VALUES (TO_CHAR(cpfSequence.nextVal, '0000000000'), 'JAAZIEL',   '05-05-1992', 'M', 'RUA MACIEL PINHEIRO',             227,  'CENTRO',           '58100000', 'jaaziel@ccc.ufcg.edu.br');
    
INSERT INTO cliente (cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
        VALUES (TO_CHAR(cpfSequence.nextVal, '0000000000'), 'ALEXANDRO', '06-16-1993', 'M', 'AV MAL FLORIANO PEIXOTO',         450,  'SAO JOSE',         '58100000', 'alexandro@ccc.ufcg.edu.br');
    
INSERT INTO cliente (cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
        VALUES (TO_CHAR(cpfSequence.nextVal, '0000000000'), 'FILIPE',    '07-15-1995', 'M', 'AV ALMIRANTE BARROSO',            221,  'QUARENTA',         '58100000', 'filipe@ccc.ufcg.edu.br');
    
INSERT INTO cliente (cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
        VALUES (TO_CHAR(cpfSequence.nextVal, '0000000000'), 'ZEUS',      '08-30-1990', 'M', 'RUA RIO DE JANEIRO',              75,   'LIBERDADE',        '58100000', 'zeus@ccc.ufcg.edu.br');
    
INSERT INTO cliente (cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
        VALUES (TO_CHAR(cpfSequence.nextVal, '0000000000'), 'VANDERLAN', '09-29-1992', 'M', 'RUA OLINDINA PEREIRA DOS SANTOS', 97,   'MALVINAS',         '58100000', 'vanderlan@ccc.ufcg.edu.br');
    
INSERT INTO cliente (cpf, nome, data_nascimento, sexo, rua, numero, bairro, cep, email)
        VALUES (TO_CHAR(cpfSequence.nextVal, '0000000000'), 'DIEGO',     '10-03-1992', 'M', 'RUA CECILIA DE ARAUJO',           556,  'TRES IRMAS',       '58100000', 'diego@ccc.ufcg.edu.br');


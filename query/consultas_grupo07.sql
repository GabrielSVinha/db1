-- 01
SELECT c.cpf, c.nome, COUNT(d.cpf) AS qtd_dep FROM cliente c
LEFT JOIN dependente d ON c.cpf = d.titular
GROUP BY c.cpf,c.nome
ORDER BY c.cpf;

-- 02
SELECT c.* FROM cliente c
LEFT JOIN hospedagem h ON c.cpf = h.cpf_cliente
LEFT JOIN equipamento e ON e.id_quarto = h.id_quarto
WHERE e.equipamento = 'ar condicionado'
ORDER BY c.cpf;

-- 03
CREATE VIEW servico_sem_produto AS
    SELECT * FROM
        (
            SELECT s.* FROM servico s
            INNER JOIN lavanderia l ON l.id_lavanderia = s.id_servico
            LEFT JOIN produto p ON l.id_lavanderia = p.id_lavanderia
            WHERE p.id_lavanderia IS NULL
        )
        UNION
        (
            SELECT s.* FROM servico s
            INNER JOIN frigobar f ON f.id_frigobar = s.id_servico
            LEFT JOIN produto p ON f.id_frigobar = p.id_frigobar
            WHERE p.id_frigobar IS NULL
        )
        UNION
        (
            SELECT s.* FROM servico s
            INNER JOIN restaurante r ON r.id_rest = s.id_servico
            LEFT JOIN produto p ON r.id_rest = p.id_rest
            WHERE p.id_rest IS NULL
        )
        UNION
        (
            SELECT s.* FROM servico s
            INNER JOIN bar b ON b.id_bar = s.id_servico
            LEFT JOIN produto p ON b.id_bar = p.id_bar
            WHERE p.id_bar IS NULL
        )
        UNION
        (
            SELECT s.* FROM servico s
            INNER JOIN estacionamento e ON e.id_estacionamento = s.id_servico
        )
        UNION
        (
            SELECT s.* FROM servico s
            INNER JOIN passeio_turistico p ON p.id_passeio = s.id_servico
        )
    ;

-- 04
SELECT c.* FROM cliente c
LEFT JOIN reserva r ON c.cpf = r.cpf_cliente
LEFT JOIN equipamento e ON r.id_quarto = e.id_quarto
WHERE e.equipamento = 'televisao'
ORDER BY c.cpf;

-- 05
CREATE VIEW homens_reserva_2016 AS
    SELECT c.* FROM cliente c
    LEFT JOIN reserva r ON c.cpf = r.cpf_cliente
    WHERE c.sexo = 'M' AND
        (EXTRACT(YEAR FROM r.data_inicio) = 2016
        OR
        EXTRACT(YEAR FROM r.data_fim) = 2016);

-- 06
SELECT
  SUM(v.quantidade * p.valor) AS soma_vendas_bar
FROM venda v
LEFT JOIN produto p ON v.id_produto = p.id_produto
WHERE p.id_bar IS NOT NULL;

-- 07
SELECT COUNT(*) as clientes_homens_que_avaliaram FROM cliente c
INNER JOIN avaliacao a ON a.cpf_cliente = c.cpf
WHERE c.sexo = 'M';

-- 08
SELECT c.* FROM cliente c
LEFT JOIN hospedagem h ON c.cpf = h.cpf_cliente
LEFT JOIN quarto q ON q.id_quarto = h.id_quarto
WHERE c.sexo = 'M' AND q.numero = 101;

-- 09
SELECT MAX(data_fim - data_inicio) as maior_reserva_em_dias FROM reserva;

-- 10
SELECT c.* FROM cliente c
LEFT JOIN reserva r ON c.cpf = r.cpf_cliente
WHERE
  data_nascimento IN (SELECT MAX(data_nascimento) FROM cliente)
  AND
    (EXTRACT(YEAR FROM r.data_inicio) = EXTRACT(YEAR FROM SYSDATE) - 1
    OR
    EXTRACT(YEAR FROM r.data_fim) = EXTRACT(YEAR FROM SYSDATE) - 1);

-- 11
SELECT q.diaria FROM quarto q
LEFT JOIN venda v ON v.id_quarto = q.id_quarto
LEFT JOIN produto p ON p.id_produto = v.id_produto
WHERE p.id_bar IS NOT NULL;

-- 12
SELECT c.* FROM cliente c
INNER JOIN dependente d ON c.cpf = d.titular
WHERE c.rua LIKE '%Aprigio%';

-- 13
SELECT f.* FROM funcionario f
LEFT JOIN servico_prestado sp ON sp.cpf_func = f.cpf
INNER JOIN bar b ON sp.id_servico = b.id_bar;

-- 14
SELECT s.id_servico, AVG(a.nota) as media_nota FROM servico s
INNER JOIN avaliacao a ON a.id_servico = s.id_servico
GROUP BY s.id_servico
ORDER BY s.id_servico
-- Consultas realizadas no ano de 2020 e com convênio
SELECT * FROM Consultas WHERE YEAR(data_consulta) = 2020 AND id_convenio IS NOT NULL;

-- Internações com alta maior que a prevista
SELECT * FROM Internacoes WHERE data_efetiva_alta > data_prevista_alta;

-- Receituário da primeira consulta
SELECT * FROM Consultas ORDER BY data_consulta LIMIT 1;

-- Consultas de maior e menor valor
SELECT * FROM Consultas WHERE valor = (SELECT MAX(valor) FROM Consultas);
SELECT * FROM Consultas WHERE valor = (SELECT MIN(valor) FROM Consultas);

-- Internações realizadas com valor total
SELECT i.*, q.valor_diaria, DATEDIFF(i.data_efetiva_alta, i.data_entrada) * q.valor_diaria AS valor_total
FROM Internacoes i
JOIN Quartos q ON i.id_quarto = q.id_quarto;

-- Consultas de pacientes menores de 18 anos (excluindo pediatria)
SELECT * FROM Consultas c
JOIN Pacientes p ON c.id_paciente = p.id_paciente
WHERE YEAR(CURDATE()) - YEAR(p.data_nascimento) < 18 AND c.id_especialidade != 1;

-- Internações realizadas por gastroenterologistas
SELECT i.*, m.nome AS medico
FROM Internacoes i
JOIN Medicos m ON i.id_medico = m.id_medico
WHERE m.id_especialidade = (SELECT id_especialidade FROM Especialidades WHERE nome = 'Gastroenterologia');

-- Médicos e número de consultas realizadas
SELECT m.nome, m.crm, COUNT(c.id_consulta) AS numero_consultas
FROM Medicos m
JOIN Consultas c ON m.id_medico = c.id_medico
GROUP BY m.id_medico;

-- Médicos cujo nome contém 'Gabriel'
SELECT * FROM Medicos WHERE nome LIKE '%Gabriel%';

-- Enfermeiros que participaram de mais de uma internação
SELECT e.nome, e.coren, COUNT(i.id_internacao) AS numero_internacoes
FROM Enfermeiros e
JOIN Internacoes_Enfermeiros ie ON e.id_enfermeiro = ie.id_enfermeiro
JOIN Internacoes i ON ie.id_internacao = i.id_internacao
GROUP BY e.id_enfermeiro
HAVING COUNT(i.id_internacao) > 1;

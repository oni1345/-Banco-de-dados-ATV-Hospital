-- Atualização de Médicos com em_atividade
UPDATE Medicos SET em_atividade = FALSE WHERE id_medico IN (1, 2); -- Marcar médicos 1 e 2 como inativos
UPDATE Medicos SET em_atividade = TRUE WHERE id_medico NOT IN (1, 2); -- Manter os outros médicos ativos

-- Adição de Enfermeiros
INSERT INTO Enfermeiros (nome, cpf, coren) VALUES
('João Pereira', '12345678900', 'COREN1234'),
('Maria Lima', '23456789011', 'COREN5678');

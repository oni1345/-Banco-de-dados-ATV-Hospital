-- Adicionar coluna 'em_atividade' à tabela Medicos
ALTER TABLE Medicos ADD COLUMN em_atividade BOOLEAN DEFAULT TRUE;

-- Atualizar médicos para marcar como inativos
UPDATE Medicos SET em_atividade = FALSE WHERE nome IN ('Dr. João Silva', 'Dra. Maria Oliveira');

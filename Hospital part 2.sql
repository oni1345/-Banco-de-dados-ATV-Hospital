-- Inserção de Especialidades
INSERT INTO Especialidades (nome) VALUES ('Pediatria'), ('Clínica Geral'), ('Gastroenterologia'), ('Dermatologia'), ('Cardiologia'), ('Ortopedia'), ('Neurologia');

-- Inserção de Médicos
INSERT INTO Medicos (nome, crm) VALUES
('Dr. João Silva', '12345'),
('Dra. Maria Oliveira', '23456'),
('Dr. Carlos Souza', '34567'),
('Dra. Ana Costa', '45678'),
('Dr. Rafael Martins', '56789'),
('Dra. Paula Lima', '67890'),
('Dr. José Almeida', '78901'),
('Dra. Fernanda Santos', '89012'),
('Dr. Gabriel Oliveira', '90123'),
('Dra. Juliana Pereira', '01234');

-- Inserção de Pacientes
INSERT INTO Pacientes (nome, data_nascimento, endereco, telefone, email, cpf, rg) VALUES
('Carlos Alberto', '1990-02-15', 'Rua 1', '123456789', 'carlos@exemplo.com', '12345678900', 'MG123456'),
('Juliana Mendes', '1985-07-21', 'Rua 2', '987654321', 'juliana@exemplo.com', '23456789011', 'MG234567'),
('Roberto Souza', '2000-11-30', 'Rua 3', '112233445', 'roberto@exemplo.com', '34567890122', 'MG345678');
-- Continue inserindo pacientes...
;

-- Inserção de Consultas
INSERT INTO Consultas (data_consulta, id_medico, id_paciente, id_convenio, valor, numero_carteira, id_especialidade) VALUES
('2020-05-10 10:00:00', 1, 1, 1, 150.00, '12345', 1),
('2020-06-15 14:30:00', 2, 2, 2, 200.00, '67890', 3),
('2020-08-20 09:00:00', 3, 3, NULL, 100.00, NULL, 2);
-- Continue inserindo consultas...
;

-- Inserção de Quartos
INSERT INTO Quartos (numero_quarto, tipo, valor_diaria) VALUES
(101, 'Apartamento', 300.00),
(102, 'Quarto Duplo', 150.00),
(103, 'Enfermaria', 50.00);

-- Criação do Banco de Dados
USE hospital;

-- Tabela Médicos
CREATE TABLE Medicos (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL,
    em_atividade BOOLEAN DEFAULT TRUE
);

-- Tabela Especialidades
CREATE TABLE Especialidades (
    id_especialidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela de Médicos e Especialidades (Relacionamento)
CREATE TABLE Medicos_Especialidades (
    id_medico INT,
    id_especialidade INT,
    PRIMARY KEY(id_medico, id_especialidade),
    FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico),
    FOREIGN KEY (id_especialidade) REFERENCES Especialidades(id_especialidade)
);

-- Tabela Pacientes
CREATE TABLE Pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    email VARCHAR(100),
    cpf VARCHAR(15),
    rg VARCHAR(15)
);

-- Tabela Convênios
CREATE TABLE Convenios (
    id_convenio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cnpj VARCHAR(20),
    tempo_carencia INT
);

-- Tabela Consultas
CREATE TABLE Consultas (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    data_consulta DATETIME,
    id_medico INT,
    id_paciente INT,
    id_convenio INT,
    valor DECIMAL(10, 2),
    numero_carteira VARCHAR(20),
    id_especialidade INT,
    FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico),
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente),
    FOREIGN KEY (id_convenio) REFERENCES Convenios(id_convenio),
    FOREIGN KEY (id_especialidade) REFERENCES Especialidades(id_especialidade)
);

-- Tabela Internações
CREATE TABLE Internacoes (
    id_internacao INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT,
    id_medico INT,
    data_entrada DATE,
    data_prevista_alta DATE,
    data_efetiva_alta DATE,
    descricao_procedimentos TEXT,
    id_quarto INT,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico),
    FOREIGN KEY (id_quarto) REFERENCES Quartos(id_quarto)
);

-- Tabela Quartos
CREATE TABLE Quartos (
    id_quarto INT AUTO_INCREMENT PRIMARY KEY,
    numero_quarto INT,
    tipo VARCHAR(100),
    valor_diaria DECIMAL(10, 2)
);

-- Tabela Enfermeiros
CREATE TABLE Enfermeiros (
    id_enfermeiro INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(15),
    coren VARCHAR(20)
);

-- Tabela Relacionamento Internação e Enfermeiro
CREATE TABLE Internacoes_Enfermeiros (
    id_internacao INT,
    id_enfermeiro INT,
    PRIMARY KEY(id_internacao, id_enfermeiro),
    FOREIGN KEY (id_internacao) REFERENCES Internacoes(id_internacao),
    FOREIGN KEY (id_enfermeiro) REFERENCES Enfermeiros(id_enfermeiro)
);

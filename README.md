# -Banco-de-dados-ATV-Hospital
Essa atividade é dividida em 5 partes

# Parte 1 - Criação do Banco de Dados

Nesta parte, foi criado o banco de dados para o gerenciamento das operações do hospital.

1. **Medicos**: Armazena informações sobre os médicos, incluindo nome, CRM e status de atividade (se o médico está atuando ou não).
2. **Especialidades**: Contém as especialidades médicas, como pediatria, clínica geral, dermatologia, etc.
3. **Medicos_Especialidades**: Relacionamento entre médicos e suas especialidades.
4. **Pacientes**: Armazena dados dos pacientes, como nome, data de nascimento, telefone, e-mail, CPF, RG.
5. **Convenios**: Informações sobre convênios médicos, incluindo nome, CNPJ e tempo de carência.
6. **Consultas**: Registro das consultas realizadas pelos pacientes com dados sobre médico, paciente, convênio e especialidade.
7. **Internacoes**: Registra as internações dos pacientes com dados sobre médicos responsáveis, quartos e procedimentos realizados.
8. **Quartos**: Informações sobre os quartos do hospital, incluindo número, tipo (apartamento, duplo, enfermaria) e valor da diária.
9. **Enfermeiros**: Contém informações sobre os enfermeiros, como nome, CPF e número de registro (COREN).
10. **Internacoes_Enfermeiros**: Relacionamento entre internações e enfermeiros que acompanharam o paciente durante a internação.

com as tabelas acima será possivel ter controle total do hospital

# Parte 2 - Inserção de Dados de Exemplo

Nesta parte, foram inseridos dados de exemplo para as tabelas de médicos, pacientes, especialidades, consultas e quartos. 
Esses dados serão utilizados para realizar testes no banco de dados e gerar relatórios.

As inserções incluem:

1. **Especialidades**: Diversas especialidades médicas.
2. **Médicos**: Dados de médicos, incluindo suas especialidades.
3. **Pacientes**: Dados dos pacientes com informações completas.
4. **Consultas**: Registros de consultas, com associção a médicos, pacientes e convênios.
5. **Quartos**: Informações sobre os tipos de quartos disponíveis no hospital.

# Parte 3 - Alimentando o Banco de Dados

Nessa parte, o banco de dados foi detalhadamente alimentado com dados de exemplo.

As alterações realizadas incluem:
1. **Atualização de Médicos**: Alteração do status de atividade dos médicos (marcando alguns como inativos).
2. **Inserção de Enfermeiros**: Inserção de registros de enfermeiros que podem ser associados a internações futuras.

# Parte 4 - Alterando o Banco de Dados

Nesta parte, foi feita a alteração na estrutura da tabela **Medicos**, adicionando a coluna **em_atividade**, que indica se o médico está ativo ou não.

Essa alteração permite gerenciar os médicos que estão em atividade dentro do hospital e facilita a criação de relatórios de médicos ativos/inativos.

# Parte 5 - Consultas

Nesta parte, foram criadas diversas consultas SQL para extrair informações detalhadas.

As consultas realizadas incluem:
1. Consultas de 2020 e com convênios.
2. Internações com alta maior que a prevista.
3. Consultas de maior e menor valor.
4. Internações realizadas com valor total.
5. Consultas de pacientes menores de 18 anos, excluindo pediatria.
6. Internações realizadas por médicos gastroenterologistas.
7. Relatório de médicos e número de consultas realizadas.
8. Pesquisa de médicos com nome "Gabriel".
9. Enfermeiros que participaram de mais de uma internação.

    agora a atividade foi finalizada


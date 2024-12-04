INSERT INTO instituicao (ID_Membro, Telefone, Email, Data_Nascimento, Funcao_Institucional, Nome_Membro, Endereco)
VALUES 
(1, '123456789', 'professor1@email.com', '1980-01-01', 'professor', 'Nicolas Kassalias', 'Rua A, 123'),
(2, '987654321', 'estudante1@email.com', '2002-05-15', 'estudante', 'Gustavo Lima', 'Rua B, 456');

INSERT INTO professor (ID_Professor, ID_Membro, Especialidade)
VALUES 
(1, 1, 'Banco de Dados');

INSERT INTO estudante (ID_Estudante, ID_Membro)
VALUES 
(1, 2);

INSERT INTO disciplina (ID_Disciplina, Nome, Carga_Horaria, ID_Professor)
VALUES 
(1, 'Banco de Dados', 60, 1);

INSERT INTO turma (ID_Turma, Ano_Escolar, Semestres, ID_Disciplina)
VALUES 
(1, 2024, 1, 1);

INSERT INTO matricula (ID_Matricula, ID_Estudante, ID_Turma)
VALUES 
(1, 1, 1);


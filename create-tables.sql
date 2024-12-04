CREATE TABLE instituicao (
    ID_Membro INT PRIMARY KEY,
    Telefone VARCHAR,
    Email VARCHAR,
    Data_Nascimento DATE,
    Funcao_Institucional VARCHAR,
    Nome_Membro VARCHAR,
    Endereco VARCHAR
);

CREATE TABLE professor (
    ID_Professor INT PRIMARY KEY,
    ID_Membro INT,
    Especialidade VARCHAR,
    FOREIGN KEY (ID_Membro) REFERENCES instituicao(ID_Membro)
);

CREATE TABLE estudante (
    ID_Estudante INT PRIMARY KEY,
    ID_Membro INT,
    FOREIGN KEY (ID_Membro) REFERENCES instituicao(ID_Membro)
);

CREATE TABLE disciplina (
    ID_Disciplina INT PRIMARY KEY,
    Nome VARCHAR,
    Carga_Horaria INT,
    ID_Professor INT,
    FOREIGN KEY (ID_Professor) REFERENCES professor(ID_Professor)
);

CREATE TABLE turma (
    ID_Turma INT PRIMARY KEY,
    Ano_Escolar INT,
    Semestres INT,
    ID_Disciplina INT,
    FOREIGN KEY (ID_Disciplina) REFERENCES disciplina(ID_Disciplina)
);

CREATE TABLE matricula (
    ID_Matricula INT PRIMARY KEY,
    ID_Estudante INT,
    ID_Turma INT,
    FOREIGN KEY (ID_Estudante) REFERENCES estudante(ID_Estudante),
    FOREIGN KEY (ID_Turma) REFERENCES turma(ID_Turma)
);



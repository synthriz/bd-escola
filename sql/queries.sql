-- ver as turmas disponíveis
SELECT ID_Turma, Ano_Escolar, Semestres FROM turma;

-- ver as disciplinas disponíveis
SELECT Nome FROM disciplina;

-- ver todos os membros da instituição
SELECT * FROM instituicao;

-- ver todos os professores
SELECT Nome_Membro FROM instituicao
WHERE Funcao_Institucional = 'professor';

-- ver todos os estudantes
SELECT Nome_Membro FROM instituicao
WHERE Funcao_Institucional = 'estudante';

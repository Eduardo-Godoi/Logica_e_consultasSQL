

- Buscar os nomes de todos os alunos que frequentam alguma turma do professor 'JOAO PEDRO'.

SELECT DISTINCT(aluno.nome) FROM aluno, turma, professor
  WHERE professor.nome = 'Joao Pedro' and turma.professor_id = professor.id and turma.aluno_id = aluno.id

       
- Buscar os dias da semana que tenham aulas da disciplina 'MATEMATICA'.

SELECT turma.dia_da_semana from turma, disciplina
  WHERE disciplina.nome = 'Matematica' and turma.disciplina_id = disciplina.id


-Buscar todos os alunos que frequentem aulas de 'MATEMATICA' e também 'FISICA'.

SELECT DISTINCT(aluno.nome) from turma, disciplina, aluno
	WHERE disciplina.nome = 'Matematica' 
    and aluno.id IN (SELECT aluno_id from disciplina
	INNER JOIN turma    
	 ON(disciplina.nome = 'Fisica' and disciplina.id = turma.disciplina_id ))


- Buscar as disciplinas que não tenham nenhuma turma.

 SELECT disciplina From disciplina
	WHERE disciplina.id NOT IN (SELECT turma.disciplina_id From turma)


- Buscar os alunos que frequentem aulas de 'MATEMATICA' exceto os que frequentem 'QUIMICA'.

SELECT DISTINCT(aluno.nome) from turma, disciplina, aluno
	WHERE disciplina.nome = 'Matematica' 
    and aluno.id NOT IN (SELECT aluno_id from disciplina
	INNER JOIN turma    
	 ON(disciplina.nome = 'Quimica' and disciplina.id = turma.disciplina_id ))
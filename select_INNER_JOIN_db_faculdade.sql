use db_faculdade;

CREATE VIEW vw_alunocurso AS
SELECT a.RA, CONCAT(a.nome_aluno, ' ', a.sobrenome_aluno) AS nome, c.nome_curso, t.periodo
FROM aluno a
INNER JOIN curso c 
	ON a.fk_cod_curso = c.cod_curso
INNER JOIN turma t
	ON a.fk_cod_turma = t.cod_turma
ORDER BY a.nome_aluno;

SELECT * FROM vw_alunocurso;

CREATE VIEW vw_alunodisciplinanota AS
SELECT a.RA, d.nome_disciplina, CONCAT(a.nome_aluno, ' ', a.sobrenome_aluno) AS nome, dh.nota
FROM disciplina d
INNER JOIN aluno_disciplina ad 
	ON d.cod_disciplina = ad.fk_cod_disciplina
INNER JOIN aluno a
	ON a.RA = ad.fk_RA
INNER JOIN disciplina_historico dh
	ON d.cod_disciplina = dh.fk_cod_disciplina
ORDER BY dh.nota DESC;
    
SELECT * FROM vw_alunodisciplinanota;

CREATE VIEW vw_professordisciplinacargahoraria AS
SELECT CONCAT(p.nome_professor, ' ', p.sobrenome_professor) AS nome, d.nome_disciplina, d.carga_horaria
FROM professor p
INNER JOIN professor_disciplina pd 
	ON p.cod_professor = pd.fk_cod_professor
INNER JOIN disciplina d
	ON d.cod_disciplina = pd.fk_cod_disciplina;
    
SELECT * FROM vw_professordisciplinacargahoraria;

CREATE VIEW vw_alunoenderecotelefone AS
SELECT  
a.RA, CONCAT(a.nome_aluno, ' ', a.sobrenome_aluno) AS nome, a.CPF, a.status, a.sexo, a.nome_pai, a.nome_mae, a.email, a.whatsapp,
e.nome_rua, e.numero_rua, e.complemento, e.CEP, tl.tipo_logradouro,
te.num_telefone, tt.tipo_telefone
FROM aluno a
INNER JOIN endereco e
	ON a.fk_cod_endereco = e.cod_endereco
INNER JOIN tipo_logradouro tl
	ON e.fk_cod_tipo_logradouro = tl.cod_tipo_logradouro
INNER JOIN telefone_aluno ta
	ON a.RA = ta.fk_RA
INNER JOIN telefone te
	ON ta.fk_cod_telefone = te.cod_telefone
INNER JOIN tipo_telefone tt
	ON te.fk_cod_tipo = tt.cod_tipo
ORDER BY a.nome_aluno;

SELECT * FROM vw_alunoenderecotelefone;

CREATE VIEW vw_disciplinacursoprofessordepartamento AS
SELECT di.nome_disciplina, de.nome_departamento, c.nome_curso, CONCAT(p.nome_professor, ' ', p.sobrenome_professor) AS nome
FROM disciplina di
INNER JOIN departamento de
	ON di.fk_cod_departamento = de.cod_departamento
INNER JOIN curso_disciplina cd
	ON di.cod_disciplina = cd.fk_cod_disciplina
INNER JOIN curso c
	ON cd.fk_cod_curso = c.cod_curso
INNER JOIN professor_disciplina pd
	ON di.cod_disciplina = pd.fk_cod_disciplina
INNER JOIN professor p
	ON pd.fk_cod_professor = p.cod_professor
ORDER BY di.nome_disciplina;

SELECT * FROM vw_disciplinacursoprofessordepartamento;

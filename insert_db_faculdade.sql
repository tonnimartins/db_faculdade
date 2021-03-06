use db_faculdade;     
          
INSERT INTO tipo_telefone (tipo_telefone)
VALUES ('celular'), 
       ('residencial'), 
       ('comercial');
 
SELECT * FROM tipo_telefone;
	
    
INSERT INTO tipo_logradouro (tipo_logradouro)
VALUES ('rua'), 
	   ('quadra'), 
       ('bairro'), 
       ('avenida'),
       ('condominio'),
	   ('chacara'); 
	
SELECT * FROM tipo_logradouro; 
   
       
INSERT INTO departamento (nome_departamento)
VALUES ('Ciencias Humanas'),
       ('Matematica'),
       ('Biologicas'),
       ('Estagio'),
       ('Tecnologia Informação');
       
SELECT * FROM departamento; 

INSERT INTO telefone (num_telefone,fk_cod_tipo)
VALUES ('22222222222', 1), 
       ('99999999999', 1), 
       ('12121212121', 1), 
       ('23232323232', 1), 
       ('56565656565', 1),
       ('61985760588', 1),
       ('61985760588', 2),
       ('61985760588', 3),
       ('61995602208', 1),
       ('61995602208', 2),
       ('61995602208', 3),
       ('61985764915', 1),
       ('61985764915', 2),
       ('61985764915', 3);
              
SELECT * FROM telefone;

INSERT INTO endereco (nome_rua, numero_rua, complemento, CEP, fk_cod_tipo_logradouro)
VALUES ('rua direita', 5, 'setor love', '70145296', 1);

INSERT INTO endereco (nome_rua, numero_rua, complemento, CEP, fk_cod_tipo_logradouro)
VALUES ('alunos com mesmo endereco', 7, 'setor chuva', '70145333', 3);

SELECT * FROM endereco; 

INSERT INTO curso (nome_curso, fk_cod_departamento)
VALUES ('Engenharia de software', 5), 
       ('Analise de sistemas', 5), 
	   ('Biologia', 3),
	   ('Historia', 1),
	   ('Matemáticas', 2), 
	   ('biomedicina', 3),
	   ('Psicologia', 1),
       ('musica',1),
       ('estagio', 4),
       ('geografia',1);
     
SELECT * FROM curso; 

INSERT INTO turma (periodo, num_alunos, dt_inicio, dt_fim, fk_cod_curso)
VALUES ('matutino', 15, '2022-02-15', '2022-06-15', 4), 
       ('vespertino', 25, '2022-02-15', '2022-06-15', 5), 
       ('noturno', 35, '2022-02-15', '2022-06-15', 6), 
       ('matutino', 45, '2022-02-15', '2022-06-15', 7),  
       ('vespertino', 55, '2022-06-15', '2022-10-15', 8),  
       ('noturno', 15, '2022-06-15', '2022-10-15', 9), 
       ('matutino', 25, '2022-06-15', '2022-10-15', 10),  
       ('vespertino', 35, '2022-06-15', '2022-10-15', 8);
       
SELECT * FROM turma;

INSERT INTO aluno (nome_aluno, sobrenome_aluno, CPF , status, sexo, nome_pai, nome_mae, email, whatsapp, fk_cod_curso, fk_cod_turma, fk_cod_endereco)
VALUES ('paulo', 'silva', '00000000000', 1, 'M', 'carlos', 'efika', 'p.s@gmail.com', '11111111111', 4, 1, 1),
	   ('joao', 'silae', '11111111111', 1, 'M', 'jose', 'maria', 'j.s@gmail.com', '22222222222', null, 2, 1),
       ('maria', 'oliver', '22222222222', 0, 'F', 'julio', 'celia', 'm.o@gmail.com', null, 5, 3, 1),
       ('lucia', 'pereira', '33333333333', 1, 'F', 'elmo', 'marcia', 'l.p@gmail.com', '33333333333', 6, 4, 1),
       ('laura', 'araujo', '44444444444', 1, 'F', 'celio', 'joana', 'l.a@gmail.com', '44444444444', null, 5, 1),
       ('luciana', 'veras', '55555555555', 1, 'F', 'marcos', 'julia', 'l.v@gmail.com', '55555555555', 7, 6, 2),
	   ('renata', 'martin', '66666666666', 1, 'F', 'tom', 'renne', 'r.m@gmail.com', '66666666666', 8, 7, 2),
       ('deboraht', 'drummond', '77777777777', 0, 'F', 'tonni', 'renata', 'd.d@gmail.com', null, 9, 8, 1),
       ('enne', 'lopes', '88888888888', 0, 'F', 'silvio', 'paula', 'e.l@gmail.com', '77777777777', 10, 1, 1),
       ('juliana', 'souza', '99999999999', 1, 'F', 'eddu', 'lais', 'j.so@gmail.com', '88888888888', 4, 2, 1),
       ('ster', 'gomes', '12121212121', 1, 'F', 'salmo', 'karla', 's.t@gmail.com', null, 5, 3, 1),
	   ('antonio', 'marvin', '23232323232', 1, 'M', 'raul', 'sarah', 'a.m@gmail.com', '99999999999', 6, 4, 1),
       ('marcos', 'callo', '34343434343', 1, 'M', 'edson', 'laura', 'm.c@gmail.com', '12121212121', 7, 5, 1),
       ('dante', 'patto', '45454545454', 1, 'M', 'plinio', 'graca', 'd.p@gmail.com', '23232323232', 8, 6, 1),
       ('fluvia', 'galo', '56565656565', 1, 'F', 'franco', 'ella', 'f.g@gmail.com', null, 9, 7, 1),
       ('luiza', 'raposo', '67676767676', 1, 'F', 'zeze', 'ellis', 'l.r@gmail.com', '34343434343', null, 8, 1),
	   ('saulo', 'steir', '78787878787', 1, 'M', 'trigo', 'elma', 's.s@gmail.com', '45454545454', 10, 1, 1),
       ('roberto', 'calda', '89898989898', 1, 'M', 'karl', 'lara', 'r.c@gmail.com', '56565656565', 4, 2, 1),
       ('isabel', 'crib', '90909090909', 1, 'F', 'maax', 'livia', 'i.c@gmail.com', '67676767676', 5, 3, 1),
       ('effi', 'porto', '21212121212', 0, 'F', 'boris', 'claer', 'e.p@gmail.com', '78787878787', 6, 4, 1);
       
SELECT * FROM aluno;

INSERT INTO telefone_aluno (fk_RA, fk_cod_telefone)
VALUES (2, 1),
       (12, 2),
       (13, 3),
       (14, 4),
       (18, 5),
       (1, 6),
       (1, 7),
       (1, 8),
       (5, 9),
       (5, 10),
       (5, 11),
       (9, 12),
       (9, 13),
       (9, 14);

SELECT * FROM telefone_aluno;

INSERT INTO professor (nome_professor, sobrenome_professor, status, fk_cod_departamento)
VALUES ('paulo', 'silva', 0, 5),
       ('joao', 'gomes', 0, 5),
       ('jose', 'souza', 0, 3),
       ('maria', 'sousa', 1, 1),
       ('ana', 'farias', 1, 2),
       ('celia', 'araujo', 1, 3),
       ('lucas', 'lopes', 1, 1),
       ('flavio', 'alves', 1, 1),
       ('joana', 'silva', 1, 4),
       ('silvia', 'neto', 1, 1);

SELECT * FROM professor;


INSERT INTO disciplina  (nome_disciplina, carga_horaria, descricao, num_alunos, fk_cod_departamento)
VALUES ('Raciocinio logico', 25, 'descricao 1', 20, 2), 
	   ('Pscicologia cognitiva', 25, 'descricao 2', 20, 1), 
       ('Eletronica digital', 25, 'descricao 3', 20, 2), 
       ('Programação em C', 25, 'descricao 4', 20, 5), 
       ('História do Brasil', 25, 'descricao 5', 20, 1), 
       ('disciplina 6', 25, 'descricao 6', 20, 2), 
	   ('disciplina 7', 25, 'descricao 7', 20, 2), 
       ('disciplina 8', 25, 'descricao 8', 20, 2), 
       ('disciplina 9', 25, 'descricao 9', 20, 2), 
       ('disciplina 10', 25, 'descricao 10', 20, 2), 
       ('disciplina 11', 25, 'descricao 11', 20, 2), 
	   ('disciplina 12', 25, 'descricao 12', 20, 2), 
       ('disciplina 13', 25, 'descricao 13', 20, 2), 
       ('disciplina 14', 25, 'descricao 14', 20, 2), 
       ('disciplina 15', 25, 'descricao 15', 20, 2), 
       ('disciplina 16', 25, 'descricao 16', 20, 2), 
	   ('disciplina 17', 25, 'descricao 17', 20, 2), 
       ('disciplina 18', 25, 'descricao 18', 20, 2), 
       ('disciplina 19', 25, 'descricao 19', 20, 2), 
       ('disciplina 20', 25, 'descricao 20', 20, 2), 
       ('disciplina 21', 25, 'descricao 21', 20, 2), 
	   ('disciplina 22', 25, 'descricao 22', 20, 2), 
       ('disciplina 23', 25, 'descricao 23', 20, 2), 
       ('disciplina 24', 25, 'descricao 24', 20, 2), 
       ('disciplina 25', 25, 'descricao 25', 20, 2), 
       ('disciplina 26', 25, 'descricao 26', 20, 2), 
	   ('disciplina 27', 25, 'descricao 27', 20, 2), 
       ('disciplina 28', 25, 'descricao 28', 20, 2), 
       ('disciplina 29', 25, 'descricao 29', 20, 2), 
       ('disciplina 30', 25, 'descricao 30', 20, 2);

SELECT * FROM disciplina;

INSERT INTO professor_disciplina (fk_cod_professor, fk_cod_disciplina)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10);

SELECT * FROM professor_disciplina;

INSERT INTO curso_disciplina (fk_cod_curso, fk_cod_disciplina)
VALUES (1, 11),
       (2, 12),
       (3, 13),
       (4, 14),
       (5, 15),
       (6, 16),
       (7, 17),
       (8, 18),
       (9, 19),
       (10, 20);

SELECT * FROM curso_disciplina;

INSERT INTO historico (dt_inicio, dt_fim, fk_RA)
VALUES ('2022-06-15', '2026-06-15', 1),
       ('2022-06-15', '2026-06-15', 2),
       ('2022-06-15', '2026-06-15', 3),
       ('2022-06-15', '2026-06-15', 4),
       ('2022-06-15', '2026-06-15', 5),
       ('2022-06-15', '2026-06-15', 6),
       ('2022-06-15', '2026-06-15', 7),
       ('2022-06-15', '2026-06-15', 8),
       ('2022-06-15', '2026-06-15', 9),
       ('2022-06-15', '2026-06-15', 10),
       ('2022-06-15', '2026-06-15', 11),
       ('2022-06-15', '2026-06-15', 12),
       ('2022-06-15', '2026-06-15', 13),
       ('2022-06-15', '2026-06-15', 14),
       ('2022-06-15', '2026-06-15', 15),
       ('2022-06-15', '2026-06-15', 16),
       ('2022-06-15', '2026-06-15', 17),
       ('2022-06-15', '2026-06-15', 18),
       ('2022-06-15', '2026-06-15', 19),
       ('2022-06-15', '2026-06-15', 20);
       
SELECT * FROM historico;

INSERT INTO disciplina_historico (fk_cod_historico, fk_cod_disciplina, nota, frequencia)
VALUES (1, 1, 6.0, 22),
       (2, 2, 6.0, 22),
       (3, 3, 6.0, 22),
       (4, 4, 6.0, 22),
       (5, 5, 6.0, 22),
       (6, 6, 6.0, 22),
       (7, 7, 6.0, 22),
       (8, 8, 6.0, 22),
       (9, 9, 6.0, 22),
       (10, 10, 6.0, 22),
       (11, 11, 6.0, 22),
       (12, 12, 6.0, 22),
       (13, 13, 6.0, 22),
       (14, 14, 6.0, 22),
       (15, 15, 6.0, 22),
       (16, 16, 6.0, 22),
       (17, 17, 6.0, 22),
       (18, 18, 6.0, 22),
       (19, 19, 6.0, 22),
       (20, 20, 6.0, 22);

SELECT * FROM disciplina_historico;

INSERT INTO aluno_disciplina (fk_RA, fk_cod_disciplina)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 14),
       (15, 15),
       (16, 16),
       (17, 17),
       (18, 18),
       (19, 19),
       (20, 20);

SELECT * FROM aluno_disciplina;
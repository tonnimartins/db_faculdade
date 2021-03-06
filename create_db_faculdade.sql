create database if not exists db_faculdade
default character set utf8mb3
default collate utf8_general_ci;

use db_faculdade;

create table if not exists tipo_telefone(
	cod_tipo INTEGER(4) PRIMARY KEY AUTO_INCREMENT,
	tipo_telefone CHAR(15) 
	);

create table if not exists tipo_logradouro(
	cod_tipo_logradouro INTEGER(4) PRIMARY KEY AUTO_INCREMENT,
    tipo_logradouro CHAR(11)
	);
    
    
create table if not exists departamento(
	cod_departamento INTEGER(4) PRIMARY KEY AUTO_INCREMENT,
    nome_departamento CHAR(30) NOT NULL
    );    
  
  
create table if not exists telefone(
	cod_telefone INTEGER(4) PRIMARY KEY AUTO_INCREMENT,
    num_telefone CHAR(20),
    fk_cod_tipo INTEGER(4),
    FOREIGN KEY (fk_cod_tipo) REFERENCES tipo_telefone (cod_tipo)
	);     


create table if not exists endereco(
	cod_endereco INTEGER(4) PRIMARY KEY AUTO_INCREMENT,
    nome_rua CHAR(50) NOT NULL,
    numero_rua INTEGER(4) NOT NULL,
    complemento CHAR(20) NULL,
    CEP CHAR(8) NOT NULL,
    fk_cod_tipo_logradouro INTEGER(4) NOT NULL,
    FOREIGN KEY (fk_cod_tipo_logradouro) REFERENCES tipo_logradouro (cod_tipo_logradouro)
	);     
  
     
create table if not exists curso(
	cod_curso INTEGER(4) PRIMARY KEY AUTO_INCREMENT,
    nome_curso CHAR(50),
    fk_cod_departamento INTEGER(4),
	FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
	);      
    
    
create table if not exists turma(
	cod_turma INTEGER(4) PRIMARY KEY AUTO_INCREMENT,
    periodo CHAR(15),
    num_alunos INTEGER(4),
    dt_inicio DATE, 
    dt_fim DATE,
    fk_cod_curso INTEGER(4),
    FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso)
	);      
      
    
create table if not exists aluno(
	RA INTEGER(4) PRIMARY KEY AUTO_INCREMENT, 
    nome_aluno CHAR(20),
    sobrenome_aluno CHAR(20),
    CPF CHAR(11),
    status BOOLEAN,
    sexo CHAR(1),
    nome_pai CHAR(50),
    nome_mae CHAR(50),
    email CHAR(50),
    whatsapp CHAR(20),
	fk_cod_curso INTEGER(4),
    fk_cod_turma INTEGER(4),
    fk_cod_endereco INTEGER(4), 
	FOREIGN KEY (fk_cod_endereco) REFERENCES endereco (cod_endereco),
	FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso),
    FOREIGN KEY (fk_cod_turma) REFERENCES turma (cod_turma)
   	);      
      
        
create table if not exists professor(
	cod_professor INTEGER(4) PRIMARY KEY AUTO_INCREMENT,
    nome_professor CHAR(20) NOT NULL,
    sobrenome_professor CHAR(50) NOT NULL,
    status BOOLEAN,
    fk_cod_departamento INTEGER(4) NOT NULL,
	FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
	);    
           
    
create table if not exists disciplina(
	cod_disciplina INTEGER(4) PRIMARY KEY AUTO_INCREMENT,
    nome_disciplina CHAR(50),
    carga_horaria INTEGER(4) NOT NULL,
    descricao CHAR(50),
    num_alunos INTEGER(4) NOT NULL,
    fk_cod_departamento INTEGER(4) NOT NULL,
	FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
    );
  
       
create table if not exists professor_disciplina(
	fk_cod_professor INTEGER(4) NOT NULL,
    fk_cod_disciplina INTEGER(4) NOT NULL,
   	PRIMARY KEY (fk_cod_professor, fk_cod_disciplina),
    FOREIGN KEY (fk_cod_professor) REFERENCES professor (cod_professor),
    FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
    ); 
    
	     
create table if not exists curso_disciplina(
	fk_cod_curso INTEGER(4) NOT NULL,
    fk_cod_disciplina INTEGER(4) NOT NULL,
    PRIMARY KEY (fk_cod_curso, fk_cod_disciplina),
	FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina),
    FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso)
    );   
        

create table if not exists aluno_disciplina(
	fk_RA INTEGER(4) NOT NULL,
    fk_cod_disciplina INTEGER(4) NOT NULL,
    PRIMARY KEY (fk_RA, fk_cod_disciplina),
	FOREIGN KEY (fk_RA) REFERENCES aluno (RA),
    FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
    );  
    
            
create table if not exists historico(
	cod_historico INTEGER(4) PRIMARY KEY AUTO_INCREMENT,
	dt_inicio DATE,
	dt_fim DATE,
    fk_RA INTEGER(4) NOT NULL,
    FOREIGN KEY (fk_RA) REFERENCES aluno (RA)
    );
   
       
create table if not exists disciplina_historico(
	fk_cod_historico INTEGER(4) NOT NULL,
	fk_cod_disciplina INTEGER (4)NOT NULL,
	nota FLOAT (4,2),
    frequencia INTEGER(4),
    PRIMARY KEY (fk_cod_historico, fk_cod_disciplina),
	FOREIGN KEY (fk_cod_historico) REFERENCES historico (cod_historico),
    FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
    );
    
    
create table if not exists telefone_aluno(
	cod_tel_aluno INTEGER(4) PRIMARY KEY AUTO_INCREMENT,
	fk_RA INTEGER(4) NOT NULL,
	fk_cod_telefone INTEGER(4) NOT NULL,
	FOREIGN KEY (fk_cod_telefone) REFERENCES telefone (cod_telefone),
    FOREIGN KEY (fk_RA) REFERENCES aluno (RA)
	);
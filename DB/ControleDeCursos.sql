create database bdCurso;

use bdCurso;

create table tbCurso(
	IdCurso INT IDENTITY(1,1),
    Nome VARCHAR(100),
    CargaHoraria DECIMAL(5,2),
    Codigo VARCHAR(20) NOT NULL,
    CONSTRAINT PK_Curso_IdCurso PRIMARY KEY (IdCurso)
);

INSERT INTO tbCurso (nome, cargaHoraria, codigo) 
VALUES 
    ('Curso de Programação', 40.5, 'CPROG101'),
    ('Curso de Design Gráfico', 32.0, 'CDESIGN102');

create table tbAluno(
	IdAluno INT IDENTITY(1,1),
    Nome VARCHAR(100),
    Matricula VARCHAR(20) NOT NULL,
    Email VARCHAR(100),
	IdCurso INT,
    CONSTRAINT PK_Aluno_IdAluno PRIMARY KEY (IdAluno),
	CONSTRAINT FK_Aluno_IdCurso FOREIGN KEY (IdCurso) REFERENCES tbCurso(IdCurso)
);

INSERT INTO tbAluno (nome, matricula, email, idCurso) 
VALUES 
    ('João Silva', '123456', 'joao@example.com', 1),
    ('Maria Santos', '654321', 'maria@example.com', 2);

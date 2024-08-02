CREATE DATABASE escola;

CREATE TABLE estado (
    codigo  int(5)      NOT NULL,
    nome    varchar(50) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE curso (
    codigo  int(5)      NOT NULL,
    nome    varchar(50) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE cidade (
    codigo  int(5)      NOT NULL,
    nome    varchar(50) NOT NULL,
    codestado int(5)    NOT NULL,
    FOREIGN KEY (codestado) REFERENCES estado (codigo),
    PRIMARY KEY (codigo)
);

CREATE TABLE aluno (
    codigo      int(5)      NOT NULL,
    nome        varchar(50) NOT NULL,
    endereco    varchar(50) NOT NULL,
    nomepai     varchar(50) NOT NULL,
    nomemae     varchar(50) NOT NULL,
    cpf         varchar(15),  
    codcurso    int(5),
    codcidade   int(5)      NOT NULL,
    datanasci   date        NOT NULL,
    telefone    varchar(20) NOT NULL,
    email       varchar(50) NOT NULL,
    FOREIGN KEY (codcurso) REFERENCES curso (codigo),
    FOREIGN KEY (codcidade) REFERENCES cidade (codigo),
    PRIMARY KEY (codigo)
);

CREATE TABLE professor (
    codigo      int(5)      NOT NULL,
    nome        varchar(50) NOT NULL,
    endereco    varchar(50) NOT NULL,
    cpf         varchar(15) NOT NULL,  
    codcidade   int(5)      NOT NULL,
    codestado   int(5)      NOT NULL,
    codcurso    int(5),     
    telefone    varchar(20) NOT NULL,  
    email       varchar(50) NOT NULL,
    FOREIGN KEY (codcurso) REFERENCES curso (codigo),
    FOREIGN KEY (codcidade) REFERENCES cidade (codigo),
    FOREIGN KEY (codestado) REFERENCES estado (codigo),
    PRIMARY KEY (codigo)
);

CREATE TABLE disciplina (
    codigo  int(5)      NOT NULL,
    nome    varchar(50) NOT NULL,
    profcod int(5)      NOT NULL,
    ementa  varchar(50) NOT NULL,
    FOREIGN KEY (profcod) REFERENCES professor (codigo),
    PRIMARY KEY (codigo)
);


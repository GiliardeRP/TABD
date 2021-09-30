-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Emenda-Projeto (
resultado VARCHAR(20),
dataVotacao DATE,
nome VARCHAR(50),
codEmendaProjeto CHAR(8) PRIMARY KEY,
tipo VARCHAR(20),
codigo CHAR(8)
);

CREATE TABLE Vota (
opcao NUMBER,
codigo CHAR(8),
codEmendaProjeto CHAR(8),
FOREIGN KEY(codEmendaProjeto) REFERENCES Emenda-Projeto (codEmendaProjeto)
);

CREATE TABLE Congressista (
codigo CHAR(8) PRIMARY KEY,
nome VARCHAR(20),
sobrenome VARCHAR(20)
);

CREATE TABLE Filiado (
data DATE,
Atributo_2 CHAR(8),
codigo CHAR(8),
FOREIGN KEY(codigo) REFERENCES Congressista (codigo)
);

CREATE TABLE EleitoPor (
periodoMandato DATE,
dataEleito DATE PRIMARY KEY,
codigo CHAR(8),
Atributo_5 CHAR(8),
FOREIGN KEY(codigo) REFERENCES Congressista (codigo)
);

CREATE TABLE Estado (
nome VARCHAR(50),
sigla CHAR(8) PRIMARY KEY,
regiao VARCHAR(20)
);

CREATE TABLE palavra_chave  (
palavra_chave  VARCHAR(20),
codEmendaProjeto CHAR(8),

palavra_chave  NUMBER,
PRIMARY KEY(codEmendaProjeto,palavra_chave)
);

CREATE TABLE Partido (
nome VARCHAR(50),
sigla CHAR(8) PRIMARY KEY
);

ALTER TABLE Emenda-Projeto ADD FOREIGN KEY(codigo) REFERENCES Congressista (codigo);
ALTER TABLE Vota ADD FOREIGN KEY(codigo) REFERENCES Congressista (codigo);
ALTER TABLE Filiado ADD FOREIGN KEY(Atributo_2) REFERENCES Partido (sigla);
ALTER TABLE EleitoPor ADD FOREIGN KEY(Atributo_5) REFERENCES Estado (sigla);

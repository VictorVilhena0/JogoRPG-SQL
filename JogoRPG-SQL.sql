-- DDL --
CREATE DATABASE BackEndT2RPG

GO
USE BackEndT2RPG

GO
CREATE TABLE Usuario
(
	ID_Usuario INT PRIMARY KEY IDENTITY,
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(255) NOT NULL
)

GO
CREATE TABLE Classe
(
	ID_Classe INT PRIMARY KEY IDENTITY,
	Nome_Classe VARCHAR(15) UNIQUE NOT NULL
)

GO
CREATE TABLE Personagem
(
	ID_Personagem INT PRIMARY KEY IDENTITY,
	Nome_Personagem VARCHAR(30) UNIQUE NOT NULL,
	ID_Usuario INT FOREIGN KEY REFERENCES Usuario(ID_Usuario),
	ID_Classe INT FOREIGN KEY REFERENCES Classe(ID_Classe)
)

GO
CREATE TABLE Habilidade
(
	ID_Habilidade INT PRIMARY KEY IDENTITY,
	Nome_Habilidade VARCHAR(25) UNIQUE NOT NULL
)

GO
CREATE TABLE Classe_Habilidade
(
	ID_Classe INT FOREIGN KEY REFERENCES Classe(ID_Classe),
	ID_Habilidade INT FOREIGN KEY REFERENCES Habilidade(ID_Habilidade)
)
-- Fim DDL --

-- DML --
INSERT INTO Usuario VALUES ('kogamista@email.net', '123123123')
INSERT INTO Classe VALUES ('Shotgun')
INSERT INTO Personagem VALUES ('Billy', 1, 1)
INSERT INTO Habilidade VALUES ('Correr rápido')
INSERT INTO Classe_Habilidade VALUES (1, 1)
-- Fim DML --

-- DQL --
SELECT * FROM Usuario
SELECT * FROM Personagem
SELECT * FROM Classe
SELECT * FROM Habilidade
SELECT * FROM Classe_Habilidade
-- Fim DQL --
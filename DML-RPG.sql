GO
USE BackEndT2RPG

INSERT INTO Usuario VALUES ('kogamista@email.net', '123123123')
INSERT INTO Classe VALUES ('Shotgun')
INSERT INTO Personagem VALUES ('Billy', 1, 1)
INSERT INTO Habilidade VALUES ('Correr rápido')
INSERT INTO Classe_Habilidade VALUES (1, 1)

UPDATE Usuario
SET Email = 'PanetoneDeFruta@email.com' WHERE ID_Usuario = 1

UPDATE Personagem
SET Nome_Personagem = 'Scout' WHERE ID_Personagem = 1
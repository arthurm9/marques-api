CREATE TABLE IF NOT EXISTS Contato (
    id BIGINT NOT NULL AUTO_INCREMENT,
    clienteid BIGINT NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    contato VARCHAR(100) NOT NULL,
    PRIMARY KEY(ID)
);

ALTER TABLE contato ADD CONSTRAINT FK_Contato_Cliente FOREIGN KEY(clienteid) REFERENCES cliente(id);

-- INSERT INTO contato(contato, descricao, clienteid)
-- VAlUES ('Arthur Marques de Oliveira', 1),
--       ('João Érik da Silva Crisostomo', 1),
--       ('Lucas Vieira da Silva', 2),
--       ('Matheus Henrique Crispim Cola', 2),
--       ('Pedro Henrique Vieira Ribeiro', 3),
--       ('Vinícius Henrique dos Santos Pinto', 4);
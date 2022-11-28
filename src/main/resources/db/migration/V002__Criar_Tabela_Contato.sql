CREATE TABLE IF NOT EXISTS Contato (
    id BIGINT NOT NULL AUTO_INCREMENT,
    clienteid BIGINT NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    contato VARCHAR(100) NOT NULL,
    PRIMARY KEY(ID)
);

ALTER TABLE Contato ADD CONSTRAINT FK_Contato_Cliente FOREIGN KEY(clienteid) REFERENCES Cliente(id);

INSERT INTO Contato(clienteid, descricao, contato) VALUES
    (1, "tel", "14123098374"),
    (2, "tel", "43929292929"),
    (3, "e-mail", "arjolu@gmail.com"),
    (4, "e-mail", "thaoca@hotmail.com"),
    (5, "tel", "32839201928");

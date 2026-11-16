sql
CREATE TABLE Usuarios (
    ID_Usuario VARCHAR(50) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Setor VARCHAR(50) NOT NULL
);

CREATE TABLE Chamados (
    ID_Chamado VARCHAR(50) PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    Descricao TEXT NOT NULL,
    Prioridade VARCHAR(20) NOT NULL CHECK (Prioridade IN ('Baixa', 'Média', 'Alta')),
    Status VARCHAR(20) NOT NULL DEFAULT 'Aberto' CHECK (Status IN ('Aberto', 'Em Andamento', 'Concluído')),
    Data_Abertura DATE NOT NULL,
    Email_Solicitante VARCHAR(100) NOT NULL,
    FOREIGN KEY (Email_Solicitante) REFERENCES Usuarios(Email)
);
CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    data_cadastro DATE NOT NULL
);

CREATE TABLE livro (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano_publicacao INT,
    categoria VARCHAR(50),
    quantidade_total INT NOT NULL,
    quantidade_disponivel INT NOT NULL
);

CREATE TABLE emprestimo (
    id_emprestimo INT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

CREATE TABLE reserva (
    id_reserva INT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_livro INT NOT NULL,
    data_reserva DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

CREATE TABLE multa (
    id_multa INT PRIMARY KEY,
    id_emprestimo INT NOT NULL,
    valor DECIMAL NOT NULL,
    data_multa DATE NOT NULL,
    FOREIGN KEY (id_emprestimo) REFERENCES emprestimo(id_emprestimo)
);
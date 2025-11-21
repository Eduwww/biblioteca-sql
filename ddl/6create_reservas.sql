CREATE TABLE reservas (
    id_reserva INT PRIMARY KEY AUTO_INCREMENT,
    id_livro INT,
    id_aluno INT,
    data_reserva DATE,
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);
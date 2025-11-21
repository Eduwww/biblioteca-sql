
SELECT
    L.Titulo,
    E.Nome AS NomeEditora,
    L.AnoPublicacao
FROM Livro L
JOIN Editora E ON L.EditoraID = E.EditoraID;


SELECT
    L.Titulo,
    A.Nome AS NomeAutor
FROM Livro L
JOIN Livro_Autor LA ON L.ISBN = LA.ISBN
JOIN Autor A ON LA.AutorID = A.AutorID
ORDER BY L.Titulo;

SELECT
    U.Nome AS Usuario,
    L.Titulo AS LivroEmprestado,
    E.DataEmprestimo,
    E.DataDevolucaoPrevista
FROM Emprestimo E
JOIN Usuario U ON E.MatriculaUsuario = U.Matricula
JOIN Exemplar X ON E.ExemplarID = X.ExemplarID
JOIN Livro L ON X.ISBN = L.ISBN
WHERE E.DataDevolucaoReal IS NULL;
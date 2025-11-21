SELECT
    U.Nome AS Usuario,
    L.Titulo AS LivroAtrasado,
    E.DataDevolucaoPrevista,
    E.DataDevolucaoReal,
    JULIANDAY(E.DataDevolucaoReal) - JULIANDAY(E.DataDevolucaoPrevista) AS DiasAtraso,
    (JULIANDAY(E.DataDevolucaoReal) - JULIANDAY(E.DataDevolucaoPrevista)) * 2.00 AS ValorMulta
FROM Emprestimo E
JOIN Usuario U ON E.MatriculaUsuario = U.Matricula
JOIN Exemplar X ON E.ExemplarID = X.ExemplarID
JOIN Livro L ON X.ISBN = L.ISBN
WHERE E.DataDevolucaoReal IS NOT NULL
  AND E.DataDevolucaoReal > E.DataDevolucaoPrevista
ORDER BY ValorMulta DESC;
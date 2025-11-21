SELECT
    L.Titulo,
    COUNT(X.ExemplarID) AS TotalExemplares
FROM Livro L
JOIN Exemplar X ON L.ISBN = X.ISBN
GROUP BY L.Titulo
ORDER BY TotalExemplares DESC;

SELECT
    U.TipoUsuario,
    COUNT(E.EmprestimoID) AS TotalEmprestimos
FROM Emprestimo E
JOIN Usuario U ON E.MatriculaUsuario = U.Matricula
GROUP BY U.TipoUsuario;
UPDATE alunos
SET periodo = 6
WHERE nome = 'Pedro Lima';

UPDATE livros
SET ano_publicacao = 2021
WHERE titulo = 'Introdução à Programação';

UPDATE emprestimos
SET data_devolucao = '2025-02-20'
WHERE id_emprestimo = 2;

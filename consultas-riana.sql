#Mostrar todos os empréstimos com o nome do usuário e o título do livro
SELECT 
    emprestimo.id_emprestimo,
    usuario.nome,
    livro.titulo,
    emprestimo.data_emprestimo,
    emprestimo.data_devolucao
FROM emprestimo
JOIN usuario ON emprestimo.id_usuario = usuario.id_usuario
JOIN livro ON emprestimo.id_livro = livro.id_livro;

#Ver quais livros estão com todas as cópias emprestadas
SELECT 
    titulo,
    categoria,
    quantidade_total,
    quantidade_disponivel
FROM livro
WHERE quantidade_disponivel = 0;

#Ver quem reservou livros, qual livro foi reservado e em que data
SELECT 
    usuario.nome,
    livro.titulo,
    reserva.data_reserva
FROM reserva
JOIN usuario ON reserva.id_usuario = usuario.id_usuario
JOIN livro ON reserva.id_livro = livro.id_livro;

#Ver quem recebeu multa, qual livro era, e o valor da multa
SELECT 
    usuario.nome,
    livro.titulo,
    multa.valor,
    multa.data_multa
FROM multa
JOIN emprestimo ON multa.id_emprestimo = emprestimo.id_emprestimo
JOIN usuario ON emprestimo.id_usuario = usuario.id_usuario
JOIN livro ON emprestimo.id_livro = livro.id_livro;

#Ver todos os empréstimos com o nome do usuário
SELECT 
    usuario.nome,
    emprestimo.id_emprestimo
FROM usuario
JOIN emprestimo ON usuario.id_usuario = emprestimo.id_usuario;

#Ver todos os livros que já tiveram multa.
SELECT 
    livro.titulo,
    multa.id_multa,
    multa.valor
FROM multa
JOIN emprestimo ON multa.id_emprestimo = emprestimo.id_emprestimo
JOIN livro ON emprestimo.id_livro = livro.id_livro;



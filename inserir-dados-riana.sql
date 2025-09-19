INSERT INTO usuario (id_usuario, nome, email, telefone, data_cadastro) VALUES
(1, 'Riana', 'riana.pinheiro@gmail.com', '19999015041', '2025-09-05'),
(2, 'Felipe', 'Felipe.zotelli@gmail.com', '1999256406', '2025-09-05'),
(3, 'Lorena', 'Lorena.marques@gmail.com', '1999935619', '2025-09-05'),
(4, 'Laura', 'Laura.Souza@gmail.com', '19994621056', '2025-09-05'),
(5, 'Leticia', 'Leticia.Talachia@gmail.com', '19999462972', '2025-09-05');

INSERT INTO livro (id_livro, titulo, ano_publicacao, categoria, quantidade_total, quantidade_disponivel) VALUES
(1, 'Pequeno pricipe', 2010, 'Fantasia', 10, 7),
(2, 'Assassinato no expresso do oriente', 1957, 'Misterio', 7, 2),
(3, 'Declínio de um homem', 1997, 'Autobiografia', 2, 1),
(4, 'Natuto', 2007, 'Aventura', 33, 29),
(5, 'IT', 2010, 'Terror', 28, 3);

INSERT INTO emprestimo (id_emprestimo, id_usuario, id_livro, data_emprestimo, data_devolucao) VALUES
(1, 1, 1, '2025-07-05', '2025-09-15'),
(2, 2, 2, '2025-07-20', '2025-09-03'),
(3, 3, 3, '2025-02-25', '2025-08-05'),
(4, 4, 4, '2025-08-03', '2025-08-24'),
(5, 5, 5, '2025-07-10', '2025-07-24');

INSERT INTO reserva (id_reserva, id_usuario, id_livro, data_reserva) VALUES
(1, 1, 2, '2025-08-05'),
(2, 2, 3, '2025-08-01'),
(3, 3, 1, '2025-08-02'),
(4, 4, 5, '2025-08-04'),
(5, 5, 4, '2025-08-06');

INSERT INTO multa (id_multa, id_emprestimo, valor, data_multa) VALUES
(1, 3, 5.00, '2025-08-10'),
(2, 5, 2.50, '2025-07-26'),
(3, 2, 9.00, '2025-08-03'),
(4, 1, 4.30, '2025-08-15'),
(5, 4, 3.00, '2025-08-18');

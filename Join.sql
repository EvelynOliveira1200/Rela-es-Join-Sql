CREATE DATABASE join_sql;

/*Criação de tabelas autores*/
CREATE TABLE autores (
id_autores SERIAL PRIMARY KEY,
nome_autor VARCHAR(50)
);

/*Criação de tabelas livros*/
CREATE TABLE livros (
id_livros SERIAL PRIMARY KEY,
id_autores INT,
nome_livro VARCHAR(50),
FOREIGN KEY (id_autores) REFERENCES autores(id_autores)
);


/*Inserção de dados de autores*/
INSERT INTO autores (nome_autor) VALUES ('Colleen Hoover');
INSERT INTO autores (nome_autor) VALUES ('Stephen King');
INSERT INTO autores (nome_autor) VALUES ('John Green');
INSERT INTO autores (nome_autor) VALUES ('Nicholas Sparks');
INSERT INTO autores (nome_autor) VALUES ('Jojo Moyes');
INSERT INTO autores (nome_autor) VALUES ('George R.R. Martin');
INSERT INTO autores (nome_autor) VALUES ('Ken Follett');
INSERT INTO autores (nome_autor) VALUES ('Neil Gaiman');
INSERT INTO autores (nome_autor) VALUES ('James Patterson');
INSERT INTO autores (nome_autor) VALUES ('Paulo Coelho');
INSERT INTO autores (nome_autor) VALUES ('Dan Brown');
INSERT INTO autores (nome_autor) VALUES ('Haruki Murakami');
INSERT INTO autores (nome_autor) VALUES ('Taylor Jenkins Reid');
INSERT INTO autores (nome_autor) VALUES ('Margaret Atwood');
INSERT INTO autores (nome_autor) VALUES ('Cassandra Clare');

/*Selecionando todos os autores*/
SELECT * FROM autores;

/*Inserção de dados de livros*/
INSERT INTO livros (id_autores, nome_livro) VALUES (1, 'Verity');
INSERT INTO livros (id_autores, nome_livro) VALUES (2, 'It: A Coisa');
INSERT INTO livros (id_autores, nome_livro) VALUES (3, 'A Culpa é das Estrelas');
INSERT INTO livros (id_autores, nome_livro) VALUES (4, 'Diário de uma Paixão');
INSERT INTO livros (id_autores, nome_livro) VALUES (5, 'Como Eu Era Antes de Você');
INSERT INTO livros (id_autores, nome_livro) VALUES (6, 'A Guerra dos Tronos');
INSERT INTO livros (id_autores, nome_livro) VALUES (7, 'Os Pilares da Terra');
INSERT INTO livros (id_autores, nome_livro) VALUES (8, 'Deuses Americanos');
INSERT INTO livros (id_autores, nome_livro) VALUES (9, 'Along Came a Spider');
INSERT INTO livros (id_autores, nome_livro) VALUES (10, 'O Alquimista');
INSERT INTO livros (id_autores, nome_livro) VALUES (11, 'O Código Da Vinci');
INSERT INTO livros (id_autores, nome_livro) VALUES (12, 'Kafka à Beira-Mar');
INSERT INTO livros (id_autores, nome_livro) VALUES (13, 'Daisy Jones & The Six');
INSERT INTO livros (id_autores, nome_livro) VALUES (14, 'O Conto da Aia');
INSERT INTO livros (id_autores, nome_livro) VALUES (15, 'Cidade dos Ossos');


/*Selecionando todos os livros*/    
SELECT * FROM livros;

/*Selecionando todos os livros com autores associados*/
SELECT a.nome_autor, l.nome_livro
FROM autores a
INNER JOIN livros l ON a.id_autores = l.id_autores;

/*Selecionando todos os livros mesmo que não tenham autores associados*/
INSERT INTO autores (nome_autor) VALUES ('Machado de Assis');

SELECT a.nome_autor, l.nome_livro
FROM autores a
LEFT JOIN livros l ON a.id_autores = l.id_autores;



/*Selecionando todos os autores, mesmo que não tenham livros associados*/
INSERT INTO livros (nome_livro) VALUES ('A Empregada');

SELECT a.nome_autor, l.nome_livro
FROM autores a
RIGHT JOIN livros l ON a.id_autores = l.id_autores;

/*Selecionando todos os autores e livros*/
SELECT a.nome_autor, l.nome_livro
FROM autores a
FULL JOIN livros l ON a.id_autores = l.id_autores;

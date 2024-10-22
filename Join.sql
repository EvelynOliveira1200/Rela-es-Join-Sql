CREATE DATABASE join_sql

CREATE TABLE autores (
id_autores SERIAL PRIMARY KEY,
nome_autor VARCHAR(50),
nacionalidade   VARCHAR(50)
);

CREATE TABLE livros (
id_livros SERIAL PRIMARY KEY,
id_autores INT,
nome_livro VARCHAR(50),
ano_publicacao DATE,
FOREIGN KEY (id_autores) REFERENCES autores(id_autores)
);

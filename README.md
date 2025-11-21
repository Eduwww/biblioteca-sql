Este projeto consiste na criação e manipulação de dados em um banco de dados relacional utilizando comandos SQL (DML e DDL).  
O objetivo é simular o funcionamento básico de uma **Biblioteca Universitária**, incluindo alunos, livros, professores, empréstimos e reservas.

---

## 📌 Objetivos do Projeto

- Criar um banco de dados funcional com tabelas relacionadas.
- Inserir dados reais utilizando INSERT.
- Realizar consultas com SELECT utilizando:
  - WHERE  
  - ORDER BY  
  - LIMIT  
  - JOIN
- Atualizar registros existentes com UPDATE.
- Excluir registros com DELETE.
- Utilizar ferramentas como MySQL Workbench ou PGAdmin.

- 🧱 Estrutura do Banco de Dados

### Tabelas criadas:

- **alunos**  
- **livros**  
- **professores**  
- **emprestimos**  
- **reservas**

Cada tabela possui chaves primárias (PK) e relacionamentos através de chaves estrangeiras (FK).

## 🏗 1. Script: Criação das Tabelas (DDL)

CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80),
    curso VARCHAR(60),
    periodo INT
);

CREATE TABLE livros (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    autor VARCHAR(80),
    ano_publicacao INT
);

CREATE TABLE professores (
    id_prof INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80),
    departamento VARCHAR(60)
);

CREATE TABLE emprestimos (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_livro INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
);

CREATE TABLE reservas (
    id_reserva INT PRIMARY KEY AUTO_INCREMENT,
    id_livro INT,
    id_aluno INT,
    data_reserva DATE,
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);

Como Executar

Crie um banco de dados no MySQL ou PostgreSQL:

CREATE DATABASE biblioteca;
USE biblioteca;


Execute o script de criação das tabelas.

Execute o script de INSERT.

Teste as consultas SELECT.

Execute UPDATE e DELETE.

Suba tudo no seu repositório GitHub.

Autor

Eduardo Ferreira da Cruz
Projeto acadêmico para prática de SQL e modelagem de dados.

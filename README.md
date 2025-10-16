# 📦 Projeto: User Management Database

Este projeto define a estrutura de uma tabela `users` para gerenciamento de usuários em um sistema de autenticação. A tabela foi projetada para armazenar informações essenciais como nome, e-mail, senha e data de criação, com restrições de unicidade para garantir integridade dos dados.

## 🗄️ Estrutura da Tabela `users`

A tabela `users` possui os seguintes campos:

| Coluna         | Tipo     | Restrições                     | Descrição                                 |
|----------------|----------|--------------------------------|-------------------------------------------|
| `id`           | INTEGER  | PRIMARY KEY, AUTOINCREMENT, NOT NULL, UNIQUE | Identificador único do usuário.          |
| `first_name`   | TEXT     | NOT NULL, DEFAULT (150)        | Primeiro nome do usuário.                 |
| `last_name`    | TEXT     | DEFAULT (150)                  | Sobrenome do usuário.                     |
| `email`        | TEXT     | NOT NULL, UNIQUE, DEFAULT (255)| E-mail do usuário, deve ser único.        |
| `password_hash`| ANY      | NOT NULL, UNIQUE, DEFAULT (255)| Hash da senha do usuário.                 |
| `created_at`   | TEXT     |                                | Data de criação do registro.              |

## 🔐 Restrições

- `users_pk`: Garante que o `id` seja único.
- `users_un_email`: Garante que o `email` não se repita.
- `users_un_password_hash`: Garante unicidade do hash da senha (evita duplicatas).

## 🚀 Como usar

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git

   CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    first_name TEXT DEFAULT (150) NOT NULL,
    last_name TEXT DEFAULT (150),
    email TEXT NOT NULL DEFAULT (255),
    password_hash ANY NOT NULL DEFAULT (255),
    created_at TEXT,
    CONSTRAINT users_pk UNIQUE (id),
    CONSTRAINT users_un_email UNIQUE (email),
    CONSTRAINT users_un_password_hash UNIQUE (password_hash)
);

## Exemplos de Manipulações 

INSERT INTO users (first_name, last_name, email, password_hash, created_at)
VALUES ('João', 'Silva', 'joao@email.com', 'hash123', '2025-10-15');

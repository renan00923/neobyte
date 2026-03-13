# NeoByte - Sistema de E-commerce

## Objetivo do Projeto
Este repositório contém o desenvolvimento de um sistema de e-commerce utilizando PHP puro, sem frameworks externos, e TailwindCSS via CDN para o frontend.

## Estrutura de Diretórios
```
/project-root
 ├── /app
 │    ├── /controllers       # lógica das rotas e ações
 │    ├── /models            # classes de acesso ao banco
 │    ├── /dao               # camada de acesso a dados (DAO)
 │    └── /views             # HTML + TailwindCSS
 ├── /components             # componentes reutilizáveis (botões, cards, modais)
 ├── /database
 │    ├── /migrations        # scripts SQL organizados
 │    └── /seeds             # dados iniciais (categorias, produtos)
 ├── /public
 │    ├── /assets            # imagens, ícones, fontes
 │    ├── /css               # estilos adicionais
 │    └── /js                # scripts vanilla JS
 ├── /routes
 │    └── web.php            # definição de rotas simples
 ├── /security               # verificação de requisições (login, erros, validações)
 ├── /tests                  # testes unitários
 └── index.php               # ponto de entrada
```

## Como Rodar o Sistema
1. Certifique-se de ter o XAMPP instalado e rodando.
2. Clone o repositório: `git clone https://github.com/renan00923/neobyte.git`
3. Acesse o diretório: `cd neobyte`
4. Importe o banco de dados `neobyte_db.sql` no phpMyAdmin.
5. Acesse via navegador: `http://localhost/neobyte`

## Tecnologias Utilizadas
- **PHP**: Linguagem de programação pura para backend.
- **SQL ANSI 2003**: Para scripts de banco de dados.
- **TailwindCSS**: Via CDN para estilos.
- **HTML5**: Para semântica.
- **JavaScript**: Vanilla JS para interatividade.

## Padrões de Código
- Usar SQL ANSI 2003.
- TailwindCSS via CDN.
- Sem bibliotecas externas (React, Vue, Bootstrap, etc.).
- Ícones consistentes do Heroicons.

## Contribuição
- Cada commit deve ter mensagem clara e descritiva.
- Seguir boas práticas de separação de lógica (Models/Services) e apresentação (Views).
# Copilot Instructions para Projeto E-commerce

## Objetivo
Este repositório é destinado ao desenvolvimento de um sistema de e-commerce. O Copilot deve seguir as instruções abaixo para manter consistência, boas práticas e organização.

---

## Padrões de Código
- Usar **SQL ANSI 2003** para scripts de banco de dados.
- Utilizar **TailwindCSS** via CDN, sem dependências externas.
- Seguir boas práticas de semântica HTML5.
- Evitar uso de bibliotecas externas (React, Vue, Bootstrap, etc). Apenas lógica pura + Tailwind.
- Utilizar **UI do Tailwind** para componentes prontos (botões, cards, tabelas, modais).
- Ícones devem ser consistentes e minimalistas, preferencialmente do **Heroicons** (já integrado ao Tailwind UI).

---

## Estrutura de Diretórios

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

---

## Boas Práticas
- Separar lógica de negócio (Models/Services) da camada de apresentação (Views).
- Usar **nomenclatura clara** para tabelas, colunas e variáveis.
- Garantir integridade referencial no banco de dados (FKs bem definidas).
- Evitar redundância de dados.
- Cada **commit** deve ter mensagem clara e descritiva.
- Repositórios devem conter README.md explicando:
  - Objetivo do projeto
  - Estrutura de diretórios
  - Como rodar o sistema
  - Tecnologias utilizadas (Tailwind, SQL ANSI, PHP puro)

---

## Frontend
- Usar **TailwindCSS via CDN**:
  ```html
  <script src="https://cdn.tailwindcss.com"></script>

## Github 
- Repositório remoto: 
https://github.com/renan00923/neobyte.git
- Clonar o repositório 

git clone https://github.com/renan00923/neobyte.git
cd neobyte

- Verifique alterações:

git status
Adicione arquivos modificados:

git add .
Crie o commit com mensagem clara:

git commit -m "Adiciona ProdutoDAO e ajusta README"
Envie para o repositório remoto:

git push origin main
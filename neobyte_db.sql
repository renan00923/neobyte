-- Geração de Modelo físico
-- SQL ANSI 2003 - NEOBYTE SYSTEM

CREATE DATABASE neobyte_db;
USE neobyte_db;

CREATE TABLE Usuario (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    tipo VARCHAR(20) DEFAULT 'cliente'
);

CREATE TABLE Funcionario (
    id INTEGER PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    cargo VARCHAR(50),
    status BOOLEAN,
    data_admissao DATE,
    FOREIGN KEY(id_usuario) REFERENCES Usuario(id)
);

CREATE TABLE Cliente (
    id INTEGER PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    telefone VARCHAR(20),
    data_cadastro DATE,
    FOREIGN KEY(id_usuario) REFERENCES Usuario(id)
);

CREATE TABLE Contato (
    id INTEGER PRIMARY KEY,
    data_envio DATE,
    mensagem VARCHAR(400),
    status VARCHAR(20)
);

CREATE TABLE Avaliacao (
    id INTEGER PRIMARY KEY,
    nota INTEGER NOT NULL,
    comentario VARCHAR(300),
    data DATE,
    id_item_pedido INTEGER NOT NULL,
    FOREIGN KEY(id_item_pedido) REFERENCES Item_pedido(id)
);

CREATE TABLE Endereco (
    id INTEGER PRIMARY KEY,
    id_cliente INTEGER NOT NULL,
    rua VARCHAR(50),
    bairro VARCHAR(50),
    cep VARCHAR(10),
    numero VARCHAR(10),
    complemento VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(2),
    FOREIGN KEY(id_cliente) REFERENCES Cliente(id)
);

CREATE TABLE Produto (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(80),
    estoque INTEGER,
    imagem VARCHAR(255),
    preco DECIMAL(10,2)
);

CREATE TABLE Categoria (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE Catalogo (
    id INTEGER PRIMARY KEY,
    id_produto INTEGER NOT NULL,
    id_categoria INTEGER NOT NULL,
    FOREIGN KEY(id_produto) REFERENCES Produto(id),
    FOREIGN KEY(id_categoria) REFERENCES Categoria(id)
);

-- CREATE TABLE Carrinho (
--     id INTEGER PRIMARY KEY,
--     id_cliente INTEGER NOT NULL,
--     status VARCHAR(20),
--     FOREIGN KEY(id_cliente) REFERENCES Cliente(id)
-- );

-- CREATE TABLE Item_carrinho (
--     id INTEGER PRIMARY KEY,
--     id_produto INTEGER NOT NULL,
--     id_carrinho INTEGER NOT NULL,
--     quantidade INTEGER,
--     preco_unitario DECIMAL(10,2),
--     FOREIGN KEY(id_produto) REFERENCES Produto(id),
--     FOREIGN KEY(id_carrinho) REFERENCES Carrinho(id)
-- );

CREATE TABLE Pedido (
    id INTEGER PRIMARY KEY,
    id_cliente INTEGER NOT NULL,
    id_endereco INTEGER NOT NULL,
    data_criacao DATE,
    data_expiracao DATE,
    valor DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY(id_cliente) REFERENCES Cliente(id),
    FOREIGN KEY(id_endereco) REFERENCES Endereco(id)
);

CREATE TABLE Item_pedido (
    id INTEGER PRIMARY KEY,
    id_produto INTEGER NOT NULL,
    id_pedido INTEGER NOT NULL,
    quantidade INTEGER,
    preco_unitario DECIMAL(10,2),
    FOREIGN KEY(id_produto) REFERENCES Produto(id),
    FOREIGN KEY(id_pedido) REFERENCES Pedido(id)
);

CREATE TABLE Pagamento (
    id INTEGER PRIMARY KEY,
    id_transacao INTEGER NULL, 
    id_pedido INTEGER NOT NULL,
    valor_pago DECIMAL(10,2),
    status VARCHAR(20),
    data DATE,
    metodo VARCHAR(20),
    cod_transacao VARCHAR(50),
    FOREIGN KEY(id_pedido) REFERENCES Pedido(id)
);

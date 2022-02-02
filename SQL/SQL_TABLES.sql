/* Cria tabela Clientes */
CREATE TABLE Clientes (
codigo INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cidade VARCHAR(30) NOT NULL,
uf VARCHAR(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE INDEX idxNome ON Clientes (nome);
CREATE INDEX idxNomeCidadeUF ON Clientes (nome, cidade, uf);

/* Carga inicial da tabela Clientes */
INSERT INTO Clientes (nome, cidade, uf) VALUES ('João', 'Ipanema', 'RJ');
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Maria', 'Campinas', 'SP'); 
INSERT INTO Clientes (nome, cidade, uf)  VALUES ('José', 'Mariana', 'MG'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Cláudio', 'Campo Grande', 'RJ'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('João', 'Magé', 'RJ'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Carlos', 'Ipanema', 'RJ'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Renata', 'Campinas', 'SP'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Caroline', 'Mariana', 'MG'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('José Carlos', 'Campo Grande', 'RJ');
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Jorge', 'Magé', 'RJ'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Manoel', 'Ipanema', 'RJ'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Cleide', 'Campinas', 'SP'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Cláudia', 'Mariana', 'MG'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Adriano', 'Campo Grande', 'RJ'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Marcos', 'Magé', 'RJ'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Fábio', 'Ipanema', 'RJ'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Fabiana', 'Campinas', 'SP'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Josias', 'Mariana', 'MG'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Jorge', 'Campo Grande', 'RJ'); 
INSERT INTO Clientes (nome, cidade, uf) VALUES ('Márcia', 'Magé', 'RJ'); 

/* Cria tabela Produtos */
CREATE TABLE Produtos (
codigo INT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(100) NOT NULL,
preco_venda DECIMAL(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE INDEX idxDescricao ON Produtos (descricao);

/* Carga inicial da Tabela Produtos */
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto1', 1.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto2', 2.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto3', 3.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto4', 4.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto5', 5.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto6', 6.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto7', 7.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto8', 8.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto9', 9.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto10', 10.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto11', 11.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto12', 12.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto13', 13.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto14', 14.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto15', 15.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto16', 16.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto17', 17.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto18', 18.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto19', 19.00);
INSERT INTO Produtos (descricao, preco_venda) VALUES ('Produto20', 20.00);

/* Cria tabela Pedidos_Dados_Gerais */
CREATE TABLE Pedidos_Dados_Gerais (
num_pedido INT AUTO_INCREMENT PRIMARY KEY,
data_emissao DATETIME NOT NULL,
codigo_cliente INT NOT NULL,
valor_total DECIMAL(10,2) NOT NULL,
FOREIGN KEY (codigo_cliente) REFERENCES cliente(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE INDEX idxDataEmissao ON Pedidos_Dados_Gerais (data_emissao);

/* Cria tabela Pedidos_Produtos */
CREATE TABLE Pedidos_Produtos (
codigo INT AUTO_INCREMENT PRIMARY KEY,
numero_pedido INT NOT NULL,
codigo_produto INT NOT NULL,
quantidade DECIMAL(10,2) NOT NULL,
valor_unitario DECIMAL(10,2) NOT NULL,
valor_total DECIMAL(10,2) NOT NULL,
FOREIGN KEY (codigo_produto) REFERENCES Produtos(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE INDEX idxNumeroPedido ON Pedidos_Produtos (numero_pedido);
CREATE INDEX idxCodigoProduto ON Pedidos_Produtos (codigo_produto);

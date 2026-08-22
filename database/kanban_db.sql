CREATE DATABASE kanban_db_rafael2;
USE kanban_db_rafael2;

CREATE TABLE usuario(
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(45) NOT NULL,
	email VARCHAR(45) NOT NULL
);

CREATE TABLE tarefas (
	id_tarefa INT AUTO_INCREMENT PRIMARY KEY,
	id_usuario INT NOT NULL,
	descricao TEXT NOT NULL,
	setor VARCHAR(45) NOT NULL,
	prioridade ENUM('baixa','media','alta') NOT NULL,
	data_cadastro DATE NOT NULL,
	status ENUM('a fazer', 'fazendo', 'pronto') NOT NULL DEFAULT 'a fazer',
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE

);

INSERT INTO usuario (nome, email) VALUES
('Joao Silva','joao@exemplo.com'),
('Maria Santos','joao@exemplo.com'),
('Pedro Oliveira','joao@exemplo.com');

INSERT INTO tarefas(id_usuario, descricao, setor, prioridade, data_cadastro, status) VALUES
(1, 'Revisar relatório de vendas', 'Comercial', 'alta', CURDATE(), 'a fazer'),
(1, 'Atualizar planilha de custos', 'Financeiro', 'media', CURDATE(), 'fazendo'),
(2, 'Preparar apresentação para cliente', 'Marketing', 'alta', CURDATE(), 'a fazer'),
(3, 'Verificar estoque de matéria-prima', 'Produção', 'baixa', CURDATE(), 'pronto'),
(2, 'Agendar reunião com fornecedores', 'Compras', 'media', CURDATE(), 'fazendo')

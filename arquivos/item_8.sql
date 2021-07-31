/* DROP */

ALTER TABLE Vacinou DROP codigo_paciente_vacinado;

DROP TABLE Paciente_Vacinado;
DROP TABLE VACINA;
DROP TABLE Vacinou;
DROP TABLE PACIENTE;
DROP TABLE ENFERMEIRO;
DROP TABLE PESSOA;
DROP TABLE LOGRADOURO;
DROP TABLE BAIRRO;
DROP TABLE CIDADE;
DROP TABLE ESTADO;

/* CREATE */

CREATE TABLE ESTADO (
	codigo INTEGER PRIMARY KEY NOT NULL,
	sigla CHAR (2) NOT NULL
);

CREATE TABLE CIDADE (
	codigo INTEGER PRIMARY KEY NOT NULL,
	nome VARCHAR (64) NOT NULL,
	codigo_estado INTEGER NOT NULL,
	FOREIGN KEY (codigo_estado) 
		REFERENCES ESTADO(codigo)
);

CREATE TABLE BAIRRO (
	codigo INTEGER PRIMARY KEY NOT NULL,
	nome VARCHAR (64) NOT NULL,
	codigo_cidade INTEGER NOT NULL,
	FOREIGN KEY (codigo_cidade) 
		REFERENCES CIDADE(codigo)
);

CREATE TABLE LOGRADOURO (
	codigo INTEGER PRIMARY KEY NOT NULL,
	tipo VARCHAR (64) NOT NULL,
	nome VARCHAR (64) NOT NULL,
	numero INTEGER NOT NULL,
	complemento VARCHAR (64),
	cep VARCHAR (10),
	codigo_bairro INTEGER NOT NULL,
	FOREIGN KEY (codigo_bairro)
		REFERENCES BAIRRO(codigo)
);

CREATE TABLE PESSOA (
	codigo INTEGER PRIMARY KEY NOT NULL,
	nome VARCHAR (128) NOT NULL,
	cpf VARCHAR (20) NOT NULL,
	data_nascimento DATE NOT NULL,
	codigo_logradouro INTEGER NOT NULL,
	FOREIGN KEY (codigo_logradouro)
		REFERENCES LOGRADOURO(codigo)
);

CREATE TABLE PACIENTE (
	codigo INTEGER PRIMARY KEY NOT NULL,
	comorbidade VARCHAR (128),
	codigo_pessoa INTEGER NOT NULL,
	FOREIGN KEY (codigo_pessoa)
		REFERENCES PESSOA(codigo)
);

CREATE TABLE ENFERMEIRO (
	codigo INTEGER PRIMARY KEY NOT NULL,
	cip VARCHAR (64) NOT NULL,
	codigo_pessoa INTEGER NOT NULL,
	FOREIGN KEY (codigo_pessoa)
		REFERENCES PESSOA(codigo)
);

CREATE TABLE VACINA (
	codigo INTEGER PRIMARY KEY NOT NULL,
	nome VARCHAR (64) NOT NULL,
	quantidade INTEGER NOT NULL,
	lote VARCHAR (64) NOT NULL
);

CREATE TABLE Vacinou (
	codigo INTEGER PRIMARY KEY NOT NULL,
	codigo_enfermeiro INTEGER NOT NULL,
	codigo_paciente_vacinado INTEGER NOT NULL,
	FOREIGN KEY (codigo_enfermeiro)
		REFERENCES PACIENTE(codigo)
);

CREATE TABLE Paciente_Vacinado (
	codigo INTEGER PRIMARY KEY NOT NULL,
	data_dose DATE NOT NULL,
	codigo_paciente INTEGER NOT NULL,
	codigo_vacina INTEGER NOT NULL,
	FOREIGN KEY (codigo_paciente)
		REFERENCES PACIENTE(codigo),

	FOREIGN KEY (codigo_vacina)
		REFERENCES VACINA(codigo)
);

ALTER TABLE Vacinou ADD FOREIGN KEY (codigo_paciente_vacinado) REFERENCES Paciente_Vacinado(codigo);

/* INSERT */

INSERT INTO ESTADO(codigo, sigla) VALUES 
(1, 'ES'),
(2, 'SP'),
(3, 'RJ');

INSERT INTO CIDADE(codigo, nome, codigo_estado) VALUES 
(1,	'Serra', 1),
(2,	'São Paulo', 2),
(3,	'Rio de Janeiro', 3);

INSERT INTO BAIRRO(codigo, nome, codigo_cidade) VALUES 
(1,	'Eurico Salles', 1),
(2,	'Vila Mariana', 2),
(3,	'Botafogo', 3);

INSERT INTO LOGRADOURO(codigo, tipo, nome, numero, complemento, cep, codigo_bairro) VALUES 
(1, 'Rua', 'Rua dos Sábias', 23, NULL, '29160-260', 1),
(2, 'Rua', 'Rua Comendador Paulo Brancato', 46, NULL, '04017-100', 2), 
(3, 'Rua', 'Estácio Coimbra', 20, 'Rua do California Coffee', '22260-010', 3),
(4, 'Rua', 'Rua Dona Mariana', 123, NULL, '22280-020', 3),
(5, 'Rua', 'Barão de Lucena', 67, NULL, '22260-020', 3),
(6, 'Rua', 'Rua Coronel Artur Godói', 62, NULL, '04018-050', 2),
(7, 'Av', 'Lins de Vasconcelos', 12, NULL, '04112-001', 2),
(8, 'Rua', 'R. dos Pavões', 74, NULL, '29160-162', 1),
(9, 'Rua', 'R. dos Perdizes', 3, NULL, '29160-182', 1),
(10, 'Rua', 'R. dos Colibrís', 32, NULL, '29160-171', 1);

INSERT INTO PESSOA(codigo, nome, cpf, data_nascimento, codigo_logradouro) VALUES 
(1, 'Alonso Marques Tigre', '674.654.828-79', '1980-01-23', 10),
(2, 'Ava Cavadas Belmonte', '486.786.989-93', '1976-04-10', 9),
(3, 'Nathan Dourado Silvestre', '338.024.409-00', '1990-11-11', 8),
(4, 'Veronica Abreu Calado', '228.802.538-70', '1964-06-14', 7),
(5, 'Jonathan Caeiro Valentim', '743.482.915-00', '1988-01-01', 6),
(6, 'Deise Mansilha Pedroso', '349.685.624-62', '1987-11-23', 5),
(7, 'Ananda Abranches Lages', '680.761.567-18', '1955-12-23', 4),
(8, 'Simone Nolasco Perdigão', '568.918.569-81', '1970-02-24', 1),
(9, 'Kaya Liberato Prada', '392.496.812-83', '1990-02-07', 2),
(10, 'Imran Caiado Oleiro', '474.309.112-85', '1990-07-08', 3);

INSERT INTO PACIENTE(codigo, comorbidade, codigo_pessoa) VALUES 
(1, 'Diabete mellitus 1',  1),
(2, 'Asma',  2),
(3, NULL,  3),
(4, 'Câncer',  4),
(5, NULL,  5),
(6, 'Asma',  6),
(7, NULL,  7);

INSERT INTO ENFERMEIRO(codigo, cip, codigo_pessoa) VALUES 
(1, '8PQSM',  8),
(2, 'RUSFV',  9),
(3, 'TM3CX',  10);

INSERT INTO VACINA (codigo, nome, quantidade, lote) VALUES
(1, 'CoronaVac', 10000, 'BR001563L-A2'),
(2, 'AstraZeneca', 20000, 'BR001563L-B2'),
(3, 'Pfizer', 5000, 'BR001563L-C2'),
(4, 'Janssen', 1000, 'BR001563L-D2');

INSERT INTO Paciente_Vacinado (codigo, data_dose, codigo_paciente, codigo_vacina) VALUES
(1, '2021-05-20', 1, 1),
(2, '2021-06-20', 2, 1),
(3, '2021-03-20', 3, 2),
(4, '2021-05-20', 4, 2),
(5, '2021-04-20', 5, 2),
(6, '2021-04-20', 6, 3),
(7, '2021-05-20', 7, 3);

INSERT INTO Vacinou (codigo, codigo_enfermeiro, codigo_paciente_vacinado) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 3, 6),
(7, 3, 7);
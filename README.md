# TRABALHO 01:  ProVac
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Kellen Moura Ferreira:kellen.mouraf01@gmail.com<br>
Cristhian Fontana Mattiuzzi:cristhian762@gmail.com<br>
...<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> 
<br>e motivação da escolha realizada. <br>

> O sistema “ProVac” tem como objetivo o controle dos vacinados por meio do registro das informações referente à vacina e ao vacinado com intuito de gerar relatórios acerca da distribuição dos tipos de vacinas em dada população por Logradouro, Bairro, Cidade e Estpado bem como o monitoramento das doses aplicadas em nas regiões além do desempenho dos enfermeiros e da campanha de vacinação.
 

### 3.MINI-MUNDO<br>

Descrever o mini-mundo! (Não deve ser maior do que 30 linhas, se necessário resumir para justar) <br>
Entrevista com o usuário e identificação dos requisitos.(quando for o caso de sistemas com cliente  real)<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.

> O sistema proposto para a "ProVac" conterá as informacões aqui detalhadas. Dos pacientes serão armazenados o nome, cpf, data de nascimento, endereço e comorbidade caso houver e do enfermeiro em vez das comorbidades o sistema deve registrar o CIP. Dos vacinados será registrado o nome da dose aplicada bem como sua data de aplicação. Das vacinas será mantido o nome, a quantidade disponível e o lote de origem. Cada paciente tem um e somente um registro de vacinação, assim como o registro pertence a um e somente um paciente. Cada paciente toma apenas um tipo de vacina e cada tipo de vacina pode ser aplicada em vários pacientes. Um enfermeiro pode aplicar nenhuma ou muitas doses nos pacientes porém um paciente é atendido por apenas um único enfermeiro. Além disso, cada paciente tem um e somente um endereço e cada endereço pertence a um ou mais pacientes o mesmo vale para os enfermeiros. 
 

### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para ProVac](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/arquivos/ProVac.pdf?raw=true "ProVac")
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A Empresa ProVac precisa inicialmente dos seguintes relatórios:
* Relatório que mostre a distribuição dos tipos de vacinas aplicadas por Logradouro, Bairro, Cidade, Estado.
* Relatório relativo a quantidade de vacinas aplicadas.
* Relatorio que mostre para cada enfermeiro o seu desempenho nas aplicação das doses.
* Relatório que mostre as informações relativas as regiões que mais e menos vacinaram.
* Relatório que obtenha as comorbidades predominantes na população vacinada.

 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    
![Exemplo de Tabela de dados da ProVac](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/arquivos/Dados_ProVac.ods?raw=true "Tabela - ProVac")
    
    
### 5.MODELO CONCEITUAL<br>
    A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 3 e o Máximo 5.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)       
    C) Principais fluxos de informação/entidades do sistema (mínimo 3). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados 
    D) Qualidade e Clareza
        Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas (Aplicar os conceitos de normalização abordados).   
        
![Alt text](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/images/ProVac_Conceitual.png?raw=true "Modelo Conceitual")
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    [objeto]: [descrição do objeto]
    
    ESTADO: Tabela que armazena os estados das pessoas.
    CODIGO: Campo de controle da tabela estado.
    SIGLA: Sigla que representa o estado

    CIDADE: Tabela que armazena a cidade das pessoas.
    CODIGO: Campo de controle da tabela cidade.
    NOME: Nome da cidade.
    CODIGO_ESTADO: Código que representa o estado em que a cidade pertence.

    BAIRRO: Tabela que armazena o bairro das pessoas.
    CODIGO: Campo de controle da tabela bairro.
    NOME: Nome do bairro.
    CODIGO_CIDADE: Código que representa a cidade em que o bairro pertence.

    LOGRADOURO: Tabela que armazena o logradouro das pessoas.
    CODIGO: Campo de controle da tabela logradouro.
    TIPO: Tipo de Logradouro (Rua, Av., Viela, etc.).
    NOME: Nome da Rua, Av., Viela, etc.
    NUMERO: Número da residência.
    COMPLEMENTO: Complemento ao logradouro.
    CEP: Código de Endereçamento Postal do logradouro.
    CODIGO_BAIRRO: Código que representa o bairro em que o logradouro está.

    PESSOA: Tabela que armazena os dados dos pacientes e dos enfermeiros.
    CODIGO: Campo de controle da tabela pessoa.
    NOME: Nome completo da pessoa.
    CPF: Cadastro de Pessoas Físicas cidadão.
    DATA_NASCIMENTO: Data de nascimento da pessoa.
    CODIGO_ENDERECO: Código que representa o logradouro em que a pessoa mora.

    PACIENTE: Tabela que armazena dados particulares inerentes aos pacientes.
    CODIGO: Campo de controle da tabela paciente.
    CODIGO_PESSOA: Código que representa as informações de dado paciente na tabela pessoa.
    COMOBIRDADES: Campo para registro das comorbidades de um um paciente.

    ENFERMEIRO: Tabela que armazena dados particulares inerentes aos enfermeiros.
    CODIGO: Campo de controle da tabela enfermeiro.
    CIP: Classificação Internacional para a Prática de Enfermagem.
    CODIGO_PESSOA: Código que representa as informações de dado paciente na tabela pessoa.

    PACIENTE_VACINADO: Tabela responsável por armazenar os dados dos pacientes vacinados.
    CODIGO:  Campo de controle da tabela Paciente_Vacinado.
    DATA_DOSE: Dia em que a dose foi aplicada.
    CODIGO_PACIENTE: Código que representa o paciente vacinado. 
    CODIGO_VACINA: Código que representa a vacina aplicada.

    VACINA: Tabela responsável por manter o registro das vacinas.
    CODIGO: Campo de controle da tabela vacina.
    NOME: Nome do imunizante disponível.
    QUANTIDADE: Quantidade de vacinas do lote.
    LOTE: Código que representa o lote de origem da vacina.

### 6	MODELO LÓGICO<br>
        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)
 
 ![Alt text](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/images/ProVac_Logico.png?raw=true "Modelo Logico")


### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..)
 
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
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL

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


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")



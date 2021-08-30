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

![Arquivo SQL com as instruções solicitadas no item acima ProVac](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/arquivos/item_8.sql?raw=true "ProVac.sql")



### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
	
SELECT * FROM ESTADO;

![Alt text](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/images/estado.PNG?raw=true "Tabela ESTADO")

SELECT * FROM CIDADE;

![Alt text](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/images/cidade.PNG?raw=true "Tabela CIDADE")

SELECT * FROM BAIRRO;

![Alt text](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/images/bairro.PNG?raw=true "Tabela BAIRRO")

SELECT * FROM LOGRADOURO;

![Alt text](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/images/logradouro.PNG?raw=true "Tabela LOGRADOURO")

SELECT * FROM PESSOA;

![Alt text](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/images/pessoa.PNG?raw=true "Tabela PESSOA")

SELECT * FROM PACIENTE;

![Alt text](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/images/paciente.PNG?raw=true "Tabela PACIENTE")

SELECT * FROM ENFERMEIRO;

![Alt text](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/images/enfermeiro.PNG?raw=true "Tabela ENFERMEIRO")

SELECT * FROM VACINA;

![Alt text](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/images/vacina.PNG?raw=true "Tabela VACINA")

SELECT * FROM Paciente_Vacinado;

![Alt text](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/images/Paciente_Vacinado.PNG?raw=true "Tabela Paciente_Vacinado")

SELECT * FROM Vacinou;

![Alt text](https://github.com/cristhian762/Template_Trab_BD1_2020/blob/master/images/vacinou.PNG?raw=true "Tabela Vacinou")

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND c.nome = 'Serra';
	![image](https://user-images.githubusercontent.com/69016459/129908525-1aeb6826-0d97-47be-a8d0-fb4335fbb697.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND e.sigla = 'MG';
	![image](https://user-images.githubusercontent.com/69016459/129908597-b6f10b23-9b3d-490f-818a-0da93a30cb49.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.data_nascimento > '1980-01-23';
	![image](https://user-images.githubusercontent.com/69016459/129908640-ce84f915-b1f8-4ad4-8fbd-d759d186c830.png)


SELECT p.nome AS "Enfermeiro(a)", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM enfermeiro AS enf, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE enf.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo;
	![image](https://user-images.githubusercontent.com/69016459/129908675-7926d2cc-cfb0-47cf-827a-3c803b5b64e8.png)


#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
	
SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo;
	![image](https://user-images.githubusercontent.com/69016459/129908739-99003470-6c60-4f3a-842a-504913047299.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND (e.sigla = 'RJ' OR e.sigla = 'SP');
	![image](https://user-images.githubusercontent.com/69016459/129908777-94617645-3a89-499e-8a7d-3314123a1667.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND e.sigla = 'ES';
	![image](https://user-images.githubusercontent.com/69016459/129908824-1c5287ef-2c7b-47f2-b2fa-13c45f30293b.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND e.sigla <> 'ES';
	![image](https://user-images.githubusercontent.com/69016459/129908877-14957aec-ed88-4a32-9eec-2b7bdb139c25.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND e.sigla <> 'SP';
	![image](https://user-images.githubusercontent.com/69016459/129908913-7aa675f6-0509-4b7c-b8dd-eaf9a3777ad1.png)


    b) Criar no mínimo 3 consultas com operadores aritméticos 
	
SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.data_nascimento > '1980-01-1';
	![image](https://user-images.githubusercontent.com/69016459/129908950-d9a8a02a-58eb-4893-862e-fc5a99bc0f0d.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.data_nascimento < '1980-01-1';
![image](https://user-images.githubusercontent.com/69016459/129908985-d48341e2-6315-46bd-b10e-a85fc86c9351.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.data_nascimento > '1980-01-1' AND p.data_nascimento < '1990-01-1';
![image](https://user-images.githubusercontent.com/69016459/129909023-6060e41e-6bd9-41fb-b74c-d041b34c7363.png)


    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
    
SELECT p.nome AS "Nome", pv.data_dose AS "Data aplicação", l.nome AS "Logradouro", b.nome AS "Bairro" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo;
![image](https://user-images.githubusercontent.com/69016459/129909081-e70301ce-dd0f-4e2d-9a0a-49604d5f3fb0.png)


SELECT p.nome AS "Nome", pv.data_dose AS "Data aplicação", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo;
![image](https://user-images.githubusercontent.com/69016459/129909122-92740f2b-4b36-4466-af14-88282eab04fe.png)


SELECT p.nome AS "Nome", pv.data_dose AS "Data aplicação", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo;
![image](https://user-images.githubusercontent.com/69016459/129909203-9df630b6-54b0-43d8-a6c1-77a95673867a.png)



#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
	
SELECT p.nome AS "Nome", pv.data_dose AS "Data aplicação", v.nome AS "Vacina aplicada", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM vacina AS v, Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pv.codigo_vacina = v.codigo AND pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.nome LIKE 'A%';
	![image](https://user-images.githubusercontent.com/69016459/129909237-c00de6a9-45e5-486e-bd3c-c6bc540e8fd0.png)


SELECT p.nome AS "Nome", pv.data_dose AS "Data aplicação", v.nome AS "Vacina aplicada", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM vacina AS v, Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pv.codigo_vacina = v.codigo AND pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.nome LIKE '%A%';
	![image](https://user-images.githubusercontent.com/69016459/129909267-70159b10-0fb6-4ba2-b351-c97ca9869a87.png)


SELECT p.nome AS "Nome", pv.data_dose AS "Data aplicação", v.nome AS "Vacina aplicada", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM vacina AS v, Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pv.codigo_vacina = v.codigo AND pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.nome ILIKE '%A%';
	![image](https://user-images.githubusercontent.com/69016459/129909309-2ea29375-0768-4c37-ae88-8f69d1ff4bbd.png)


SELECT p.nome AS "Nome", pv.data_dose AS "Data aplicação", v.nome AS "Vacina aplicada", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM vacina AS v, Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pv.codigo_vacina = v.codigo AND pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.nome LIKE '%B%';
	![image](https://user-images.githubusercontent.com/69016459/129909344-029feff1-7597-44ae-8032-805c8217184a.png)


SELECT p.nome AS "Nome", pv.data_dose AS "Data aplicação", v.nome AS "Vacina aplicada", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM vacina AS v, Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pv.codigo_vacina = v.codigo AND pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND l.nome LIKE '%A%';
	![image](https://user-images.githubusercontent.com/69016459/129909389-4ec54ff5-04d6-4984-9d08-33a7e03a346a.png)

	
    b) Criar uma consulta para cada tipo de função data apresentada.
	
SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.data_nascimento = (SELECT MIN(p.data_nascimento) FROM pessoa AS p INNER JOIN paciente AS pa ON (p.codigo = pa.codigo_pessoa));
	![image](https://user-images.githubusercontent.com/69016459/129909433-38fe1bd2-6418-41f1-9063-88e5129614b5.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.data_nascimento = (SELECT MAX(p.data_nascimento) FROM pessoa AS p INNER JOIN paciente AS pa ON (p.codigo = pa.codigo_pessoa));
	![image](https://user-images.githubusercontent.com/69016459/129909472-5c1684d5-df3d-4b0c-b2f8-7d24ede57522.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.data_nascimento > '1980-01-01';
	![image](https://user-images.githubusercontent.com/69016459/129909521-6af4f052-20c1-4cbc-8ea3-bf1619b332e0.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.data_nascimento < '1980-01-01';
![image](https://user-images.githubusercontent.com/69016459/129909559-da16ce0b-7dcc-44b5-8df7-ccde3296d65e.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.data_nascimento > '1970-01-01';
	![image](https://user-images.githubusercontent.com/69016459/129909605-a02ba0fa-3fae-4255-9c40-d1cef643a4ba.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.data_nascimento < '1970-01-01';
![image](https://user-images.githubusercontent.com/69016459/129909638-0a7a1c38-92f5-4b4d-8766-7b709c0ef9a0.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.data_nascimento <> '1964-06-14';
	![image](https://user-images.githubusercontent.com/69016459/129909672-5928569e-fd62-4cda-b8bc-22e173b1f4b6.png)


#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão

BEGIN;

DELETE FROM ESTADO WHERE codigo = 5;
DELETE FROM ESTADO WHERE codigo = 5;
DELETE FROM ESTADO WHERE codigo = 7;

COMMIT;
	
![image](https://user-images.githubusercontent.com/69016459/129909751-fb64e8bf-76e0-419a-8f92-ff899eed81ed.png)


    b) Criar minimo 3 de atualização

BEGIN;

UPDATE LOGRADOURO SET complemento = 'Fim da rua' WHERE codigo = 1;
UPDATE PESSOA SET cpf = '290.932.510-58' WHERE cpf = '486.786.989-93';
UPDATE PACIENTE SET comorbidade = 'Diabete mellitus 2' WHERE codigo = 3;

COMMIT;

![image](https://user-images.githubusercontent.com/69016459/129909820-d755e754-e12d-4c2a-a28f-055c86397d3d.png)


#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
	
SELECT E.CODIGO AS "Codigo_Estado", E.SIGLA AS "Estado", C.CODIGO AS "Codigo_Cidade", C.NOME AS "Cidade", C.CODIGO_ESTADO AS "Codigo_Cidade_Estado", B.CODIGO AS "Codigo_Bairro", B.NOME AS "Bairro", B.CODIGO_CIDADE AS "Codigo_Bairro_Cidade", L.CODIGO AS "Codigo_Logradouro", L.tipo, L.nome AS "Logradouro", L.numero, L.complemento, L.cep, L.CODIGO_BAIRRO, P.CODIGO AS "Codigo_Pessoa", P.nome, P.cpf, P.data_nascimento, EN.CODIGO AS "Codigo_Enfermeiro", EN.CIP, EN.CODIGO_PESSOA AS "Codigo_Enfermeiro_Pessoa", PA.CODIGO AS "Codigo_Paciente", PA.comorbidade, PA.CODIGO_PESSOA AS "Codigo_Paciente_Pessoa", PV.CODIGO AS "Codigo_Paciente_Vacinado", PV.data_dose, PV.CODIGO_VACINA AS "Codigo_Paciente_Vacinado_Vacina", PV.CODIGO_PACIENTE AS "Codigo_Paciente_Vacinado_Paciente", (SELECT P.NOME FROM ENFERMEIRO AS SEF INNER JOIN PESSOA AS SP ON (SEF.CODIGO_PESSOA = SP.CODIGO) WHERE SEF.CODIGO = V.CODIGO_ENFERMEIRO) AS "Aplicador", VA.CODIGO AS "Codigo_Vacina",  VA.NOME AS "Vacina aplicada", VA.lote FROM ESTADO AS E INNER JOIN CIDADE AS C ON (E.CODIGO = C.CODIGO_ESTADO) INNER JOIN BAIRRO AS B ON(C.CODIGO = B.CODIGO_CIDADE) INNER JOIN LOGRADOURO AS L ON (B.CODIGO = L.CODIGO_BAIRRO) INNER JOIN PESSOA AS P ON (L.CODIGO = P.CODIGO_LOGRADOURO) LEFT JOIN ENFERMEIRO AS EN ON (P.CODIGO = EN.CODIGO_PESSOA) LEFT JOIN PACIENTE AS PA ON (P.CODIGO = PA.CODIGO_PESSOA) LEFT JOIN Paciente_Vacinado AS PV ON (PA.CODIGO = PV.CODIGO_PACIENTE) LEFT JOIN Vacinou AS V ON(PV.CODIGO = V.CODIGO_PACIENTE_VACINADO) LEFT JOIN VACINA AS VA ON (VA.CODIGO = PV.CODIGO_VACINA) ORDER BY p.nome;

	![image](https://user-images.githubusercontent.com/69016459/129909897-91dbb389-f793-4e9b-a5c7-550783a979dd.png)
![image](https://user-images.githubusercontent.com/69016459/129909966-6d79ac12-7db3-4e0f-b8d7-ae80cd6dde6a.png)
![image](https://user-images.githubusercontent.com/69016459/129910008-cb1ec781-923c-4253-8bda-33eb16ff6168.png)
![image](https://user-images.githubusercontent.com/69016459/129910049-1311fff8-5dc2-4198-9b0e-d3dd9df49af5.png)

    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
	
SELECT p.nome AS "Nome", pv.data_dose AS "Data aplicação", v.nome AS "Vacina aplicada", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM vacina AS v INNER JOIN Paciente_Vacinado AS pv ON (pv.codigo_vacina = v.codigo) INNER JOIN paciente AS pa ON (pa.codigo = pv.codigo_paciente) INNER JOIN pessoa AS p ON (pa.codigo_pessoa = p.codigo) INNER JOIN logradouro AS l ON (p.codigo_logradouro = l.codigo) INNER JOIN bairro AS b ON (l.codigo_bairro = b.codigo) INNER JOIN cidade AS c ON (b.codigo_cidade = c.codigo) INNER JOIN estado AS e ON (c.codigo_estado = e.codigo) ORDER BY p.nome DESC;
	![image](https://user-images.githubusercontent.com/69016459/129910122-8740cf70-db1d-4d49-ab87-0f8d5e4434ee.png)


#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

SELECT v.nome AS "Vacina aplicada", COUNT(p.nome) AS "Número de aplicações" FROM vacina AS v INNER JOIN Paciente_Vacinado AS pv ON (pv.codigo_vacina = v.codigo) INNER JOIN paciente AS pa ON (pa.codigo = pv.codigo_paciente) INNER JOIN pessoa AS p ON (pa.codigo_pessoa = p.codigo) INNER JOIN logradouro AS l ON (p.codigo_logradouro = l.codigo) INNER JOIN bairro AS b ON (l.codigo_bairro = b.codigo) INNER JOIN cidade AS c ON (b.codigo_cidade = c.codigo) INNER JOIN estado AS e ON (c.codigo_estado = e.codigo) GROUP BY v.nome;
	![image](https://user-images.githubusercontent.com/69016459/129910173-fda9a409-447b-4fc9-9329-838af774cfcc.png)


SELECT e.sigla AS "Estado", COUNT(p.nome) AS "Vacinados por estado" FROM vacina AS v INNER JOIN Paciente_Vacinado AS pv ON (pv.codigo_vacina = v.codigo) INNER JOIN paciente AS pa ON (pa.codigo = pv.codigo_paciente) INNER JOIN pessoa AS p ON (pa.codigo_pessoa = p.codigo) INNER JOIN logradouro AS l ON (p.codigo_logradouro = l.codigo) INNER JOIN bairro AS b ON (l.codigo_bairro = b.codigo) INNER JOIN cidade AS c ON (b.codigo_cidade = c.codigo) INNER JOIN estado AS e ON (c.codigo_estado = e.codigo) GROUP BY e.sigla;
	![image](https://user-images.githubusercontent.com/69016459/129910224-8df5e416-1258-4705-a02a-38ec4f8fd53c.png)


SELECT p.nome AS "Enfermeiro(a)", COUNT(v.codigo) AS "Pessoas atendidas" FROM vacinou AS v INNER JOIN enfermeiro AS enf ON (enf.codigo = v.codigo_enfermeiro) INNER JOIN pessoa AS p ON (p.codigo = enf.codigo_pessoa) INNER JOIN logradouro AS l ON (p.codigo_logradouro = l.codigo) INNER JOIN bairro AS b ON (l.codigo_bairro = b.codigo) INNER JOIN cidade AS c ON (b.codigo_cidade = c.codigo) INNER JOIN estado AS e ON (c.codigo_estado = e.codigo) GROUP BY p.nome;
	![image](https://user-images.githubusercontent.com/69016459/129910263-67ba9df5-016b-47be-b5e5-25ece398f0ed.png)


SELECT c.nome AS "Cidade", COUNT(p.nome) AS "Vacinados por cidade" FROM vacina AS v INNER JOIN Paciente_Vacinado AS pv ON (pv.codigo_vacina = v.codigo) INNER JOIN paciente AS pa ON (pa.codigo = pv.codigo_paciente) INNER JOIN pessoa AS p ON (pa.codigo_pessoa = p.codigo) INNER JOIN logradouro AS l ON (p.codigo_logradouro = l.codigo) INNER JOIN bairro AS b ON (l.codigo_bairro = b.codigo) INNER JOIN cidade AS c ON (b.codigo_cidade = c.codigo) GROUP BY c.nome
	![image](https://user-images.githubusercontent.com/69016459/129910306-e83a1ae1-faaa-4077-836c-769c2224a1f7.png)


#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

SELECT p.nome AS "Nome", pa.codigo AS "Código do paciente", pa.comorbidade AS "Comobirdade" FROM paciente AS pa RIGHT JOIN pessoa AS p ON (pa.codigo_pessoa = p.codigo);
	![image](https://user-images.githubusercontent.com/69016459/129910359-08d7d751-756f-4fe0-8cba-2c43b955b862.png)


SELECT p.nome AS "Nome", e.codigo AS "Código do enfermeiro", e.cip AS "CIP" FROM pessoa AS p LEFT JOIN enfermeiro AS e ON (e.codigo_pessoa = p.codigo);
	![image](https://user-images.githubusercontent.com/69016459/129910405-98f509a6-4791-45f1-a260-6ea5145c257a.png)


SELECT p.nome AS "Nome", e.codigo AS "Código do enfermeiro" FROM pessoa AS p FULL JOIN enfermeiro AS e ON (e.codigo_pessoa = p.codigo);
	![image](https://user-images.githubusercontent.com/69016459/129910469-aaa9c0cc-a74a-4a4a-932e-81e09f4b45d9.png)


SELECT p.nome AS "Nome", pa.codigo AS "Código do paciente", pa.comorbidade AS "Comobirdade" FROM pessoa AS p LEFT JOIN paciente AS pa ON (pa.codigo_pessoa = p.codigo);
	![image](https://user-images.githubusercontent.com/69016459/129910510-b48a4198-e03f-4852-ae94-0517f117c621.png)


#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)

-- Não é cabível pois não há tabelas que tenham auto relacionamento.

CREATE VIEW vacinas AS SELECT v.nome AS "Vacina aplicada", COUNT(p.nome) AS "Número de aplicações" FROM vacina AS v INNER JOIN Paciente_Vacinado AS pv ON (pv.codigo_vacina = v.codigo) INNER JOIN paciente AS pa ON (pa.codigo = pv.codigo_paciente) INNER JOIN pessoa AS p ON (pa.codigo_pessoa = p.codigo) INNER JOIN logradouro AS l ON (p.codigo_logradouro = l.codigo) INNER JOIN bairro AS b ON (l.codigo_bairro = b.codigo) INNER JOIN cidade AS c ON (b.codigo_cidade = c.codigo) INNER JOIN estado AS e ON (c.codigo_estado = e.codigo) GROUP BY v.nome;

SELECT * FROM vacinas;

DROP VIEW vacinas;
	![image](https://user-images.githubusercontent.com/69016459/129910610-d9ac11d9-158d-453f-8cd3-08bcb1763b88.png)

	
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
	
CREATE VIEW vacinas_por_estado AS SELECT e.sigla AS "Estado", COUNT(p.nome) AS "Vacinados por estado" FROM vacina AS v INNER JOIN Paciente_Vacinado AS pv ON (pv.codigo_vacina = v.codigo) INNER JOIN paciente AS pa ON (pa.codigo = pv.codigo_paciente) INNER JOIN pessoa AS p ON (pa.codigo_pessoa = p.codigo) INNER JOIN logradouro AS l ON (p.codigo_logradouro = l.codigo) INNER JOIN bairro AS b ON (l.codigo_bairro = b.codigo) INNER JOIN cidade AS c ON (b.codigo_cidade = c.codigo) INNER JOIN estado AS e ON (c.codigo_estado = e.codigo) GROUP BY e.sigla;

SELECT * FROM vacinas_por_estado;

DROP VIEW vacinas_por_estado;
	![image](https://user-images.githubusercontent.com/69016459/129910752-086f3322-ba14-4d19-be78-3cd3ef70bd2f.png)


#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

SELECT AVG(m.nome) AS "Média vacinas aplicadas" FROM (SELECT COUNT(p.nome) AS "nome" FROM vacina AS v INNER JOIN Paciente_Vacinado AS pv ON (pv.codigo_vacina = v.codigo) INNER JOIN paciente AS pa ON (pa.codigo = pv.codigo_paciente) INNER JOIN pessoa AS p ON (pa.codigo_pessoa = p.codigo) INNER JOIN logradouro AS l ON (p.codigo_logradouro = l.codigo) INNER JOIN bairro AS b ON (l.codigo_bairro = b.codigo) INNER JOIN cidade AS c ON (b.codigo_cidade = c.codigo) INNER JOIN estado AS e ON (c.codigo_estado = e.codigo) GROUP BY v.nome) AS m;
	![image](https://user-images.githubusercontent.com/69016459/129910798-f71af786-e148-4a9c-b734-1374c2ad2845.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.data_nascimento = (SELECT MIN(p.data_nascimento) FROM pessoa AS p INNER JOIN paciente AS pa ON (p.codigo = pa.codigo_pessoa));
	![image](https://user-images.githubusercontent.com/69016459/129910843-68dc915d-0f5d-4c8b-8221-75e8cb3918ec.png)


SELECT p.nome AS "Nome", l.nome AS "Logradouro", b.nome AS "Bairro", c.nome AS "Cidade", e.sigla AS "Estado" FROM Paciente_Vacinado AS pv, paciente AS pa, pessoa AS p, logradouro AS l, bairro AS b, cidade AS c, estado AS e WHERE pa.codigo = pv.codigo_paciente AND pa.codigo_pessoa = p.codigo AND p.codigo_logradouro = l.codigo AND l.codigo_bairro = b.codigo AND b.codigo_cidade = c.codigo AND c.codigo_estado = e.codigo AND p.data_nascimento = (SELECT MAX(p.data_nascimento) FROM pessoa AS p INNER JOIN paciente AS pa ON (p.codigo = pa.codigo_pessoa));
	![image](https://user-images.githubusercontent.com/69016459/129910890-3fc40e82-54bf-47ee-acfb-a99d1426906d.png)

	
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



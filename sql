create table Cliente (
    CodCliente INTEGER PRIMARY KEY,
    NomeCliente VARCHAR(50),
    Endereco VARCHAR(40),
    CEP VARCHAR(9),
    CPF VARCHAR(14),
    Email VARCHAR(40),
    Tel VARCHAR(20),
    DataNasc VARCHAR(12)
       
);

create table Tecnico (
    CodTecnico INTEGER PRIMARY KEY,
    NomeTecnico VARCHAR(50),
    Endereco VARCHAR(40),
    CEP VARCHAR(9),
    CPF VARCHAR(14),
    Email VARCHAR(40),
    Tel VARCHAR(20),
    DataNasc VARCHAR(12),
    CurriRes VARCHAR(200)   
    
);

create table Pedido (
    CodCliente INTEGER,
    CodTecnico INTEGER,
    CodPedido INTEGER PRIMARY KEY,
    MetodoPagamento VARCHAR(50),
    DataAtendimento VARCHAR(50),
    FOREIGN KEY (CodCliente) REFERENCES Cliente(CodCliente),
    FOREIGN KEY (CodTecnico) REFERENCES Tecnico(CodTecnico) 
);

INSERT
INTO Cliente (CodCliente, NomeCliente, Endereco, CEP, CPF, Email, Tel, DataNasc)
VALUES (1, ' packthings ', ' Rua packthings ', ' 01234-567 ', ' 123.456.789 ', ' packthings123@gmail.com ', ' (11)912345678 ', ' 10/07/1992 ');


SELECT * FROM Cliente
WHERE (CodCliente = 1);

INSERT
INTO Tecnico (CodTecnico, NomeTecnico, Endereco, CEP, CPF, Email, Tel, DataNasc, CurriRes)
VALUES (124, ' irineu ', ' Rua irineu ', ' 61234-597 ', ' 987.654.321 ', ' irineu123@gmail.com ', ' (11)940028922 ', ' 18/08/1981 ', 'sou um tecnico mt bom sem curriculo, já trabalhei no connection link: http://www.connectionvip.com.br/.');  

SELECT * FROM Tecnico
WHERE (CodTecnico = 124);

INSERT INTO Pedido 
(CodCliente)
SELECT CodCliente
FROM Cliente;

INSERT INTO Pedido 
(CodTecnico)
SELECT CodTecnico
FROM Tecnico;

SELECT * FROM Pedido;

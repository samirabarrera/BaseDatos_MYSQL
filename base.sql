CREATE DATABASE BancoDB;
USE BancoDB;

CREATE TABLE Cuentas (
    id_cuenta INT PRIMARY KEY,
    id_cliente INT,
    tipo_cuenta VARCHAR (20),
    saldo DECIMAL (10,2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente)
);
INSERT INTO Cuentas (id_cuenta, id_cliente, tipo_cuenta, saldo) VALUES
(1, 500, 'Monetaria', 1000.00),
(2, 501, 'Monetaria', 1500.00)
(3, 502, 'Ahorro', 3500.00),
(4, 503, 'Monetaria', 2000.00),
(5, 504, 'Ahorro', 500.00);

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    Nombre VARCHAR (50),
    Ciudad VARCHAR (50)
);
INSER INTO Clientes (id_cliente, Nombre, Ciudad) VALUES
(1, 'Aitana Gonzalez', 'Guatemala'),
(2, 'Elizabeth Elías', 'Guatemala'),
(3, 'Samuel Barrera', 'El Salvador'),
(4, 'Estuardo Morán', 'Mixco'),
(5, 'Lana Alvarado', 'Guatemala');
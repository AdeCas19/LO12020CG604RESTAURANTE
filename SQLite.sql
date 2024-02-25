CREATE DATABASE restauranteDB

create table clientes (
clienteId int primary key identity,
nombreCliente varchar(200),
direccion varchar(500)
)

create table pedidos (
pedidoId int primary key identity,
motoristaId int,
clienteId int,
platoId int,
cantidad int,
precio numeric(18,4)
)

SELECT * FROM pedidos
WHERE cliente_id = 1;

create table platos (
platoId int primary key identity,
nombrePlato varchar(200),
precio numeric(18,4)
)

SELECT * FROM platos
WHERE precio < 30 " deseas obtener todos los platos cuyo precio sea menor que 10 unidades";

create table motoristas (
motoristaId int primary key identity,
nombreMotorista varchar(200)
)

SELECT * FROM motoristas;

SELECT DISTINCT m.* FROM motoristas m
JOIN Pedidos p ON m.id = p.motorista_id
JOIN Clientes c ON p.cliente_id = c.id
WHERE c.id = 'ID_DEL_CLIENTE';

SELECT * FROM motoristas
WHERE nombreMotorista = 'Carlos';
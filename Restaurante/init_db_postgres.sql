-- Script de creación de tablas para el sistema de restaurante
-- Compatible con PostgreSQL

-- Tabla de usuarios para login
CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    pass VARCHAR(100) NOT NULL,
    rol VARCHAR(50) NOT NULL
);

-- Tabla de configuración del restaurante
CREATE TABLE IF NOT EXISTS restaurante (
    id SERIAL PRIMARY KEY,
    ruc VARCHAR(50),
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(200),
    mensaje TEXT
);

-- Tabla de salas
CREATE TABLE IF NOT EXISTS salas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla de platos
CREATE TABLE IF NOT EXISTS platos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    fecha DATE NOT NULL
);

-- Tabla de pedidos
CREATE TABLE IF NOT EXISTS pedidos (
    id SERIAL PRIMARY KEY,
    id_sala INTEGER NOT NULL REFERENCES salas(id),
    num_mesa INTEGER NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2) NOT NULL,
    usuario VARCHAR(100) NOT NULL,
    estado VARCHAR(20) DEFAULT 'PENDIENTE'
);

-- Tabla de detalle de pedidos
CREATE TABLE IF NOT EXISTS detalle_pedidos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    cantidad INTEGER NOT NULL,
    comentario TEXT,
    id_pedido INTEGER NOT NULL REFERENCES pedidos(id)
);

-- Tabla de facturas
CREATE TABLE IF NOT EXISTS facturas (
    id SERIAL PRIMARY KEY,
    f_emision VARCHAR(50),
    monto_total DECIMAL(10,2) NOT NULL,
    id_pedido INTEGER REFERENCES pedidos(id),
    id_itemPedido INTEGER REFERENCES detalle_pedidos(id)
);

-- Insertar datos de ejemplo
-- Usuario de prueba
INSERT INTO usuarios (nombre, correo, pass, rol) 
VALUES ('Felipe Admin', 'felipe@gmail.com', 'felipe', 'ADMINISTRADOR')
ON CONFLICT (correo) DO NOTHING;

-- Configuración del restaurante
INSERT INTO restaurante (ruc, nombre, telefono, direccion, mensaje)
VALUES ('123456789', 'Restaurante El Buen Sabor', '591-12345678', 'Av. Principal #123', 'Gracias por su preferencia!')
ON CONFLICT DO NOTHING;

-- Salas de ejemplo
INSERT INTO salas (nombre) VALUES ('Sala Principal');
INSERT INTO salas (nombre) VALUES ('Sala VIP');
INSERT INTO salas (nombre) VALUES ('Terraza');

-- Platos de ejemplo (fecha actual)
INSERT INTO platos (nombre, precio, fecha) VALUES 
    ('Hamburguesa Clásica', 35.00, CURRENT_DATE),
    ('Pizza Margarita', 45.00, CURRENT_DATE),
    ('Ensalada César', 28.00, CURRENT_DATE),
    ('Pasta Carbonara', 40.00, CURRENT_DATE),
    ('Lomo Saltado', 50.00, CURRENT_DATE);

-- Mensaje de confirmación
SELECT 'Base de datos inicializada correctamente' AS status;

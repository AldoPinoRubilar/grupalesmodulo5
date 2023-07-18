CREATE DATABASE asesorias_DB;
USE asesorias_DB;
CREATE USER 'adminasesorias'@'localhost' IDENTIFIED BY 'Asesorias123';
GRANT ALL PRIVILEGES ON asesorias_DB.* TO 'adminasesorias'@'localhost';
FLUSH PRIVILEGES;

-- crear tabla usuarios--
CREATE TABLE usuarios (
	id INT AUTO_INCREMENT PRIMARY KEY,
	run VARCHAR(15) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    fechanacimiento DATE NOT NULL,
    tipousuario VARCHAR(50)
);

-- crear tabla clientes --
CREATE TABLE clientes (
	rut VARCHAR(15) NOT NULL PRIMARY KEY,
	nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    afp VARCHAR(15) NOT NULL,
    sistemasalud VARCHAR(15) NOT NULL,
    direccion VARCHAR(70) NOT NULL,
    comuna VARCHAR(50) NOT NULL,
    edad INT NOT NULL
);

-- crear tabla profesionales--
CREATE TABLE profesionales (
	run VARCHAR(15) NOT NULL PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    fechaingreso DATE NOT NULL
);

-- crear tabla administrativos--
CREATE TABLE administrativos (
	run VARCHAR(15) NOT NULL PRIMARY KEY,
    area VARCHAR(20) NOT NULL,
    experiencia VARCHAR(100) NOT NULL
);

-- crear tabla capacitaciones--
CREATE TABLE capacitaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombrecapacitacion VARCHAR(50) NOT NULL,
    rutcliente VARCHAR(15) NOT NULL,
    dia VARCHAR(10) NOT NULL,
    hora TIME(0) NOT NULL,
    lugar VARCHAR(50) NOT NULL,
    duracion VARCHAR(30) NOT NULL,
    cantidadasistentes INT NOT NULL
);

-- crear tabla accidentes--
CREATE TABLE accidentes (
	identificador VARCHAR(15) NOT NULL PRIMARY KEY,
	rutcliente VARCHAR(15) NOT NULL,
    dia VARCHAR(10) NOT NULL,
    hora TIME NOT NULL,
    lugar VARCHAR(50) NOT NULL,
    duracion VARCHAR(70),
    consecuencias VARCHAR(100) NOT NULL
);

-- crear tabla visitas--
CREATE TABLE visitas (
	identificador VARCHAR(15) NOT NULL PRIMARY KEY,
	rutcliente VARCHAR(15) NOT NULL,
    dia VARCHAR(10) NOT NULL,
    hora TIME NOT NULL,
    lugar VARCHAR(50) NOT NULL,
    comentarios VARCHAR(100) NOT NULL
);

-- crear tabla revision--
CREATE TABLE revision (
	identificador VARCHAR(15) NOT NULL PRIMARY KEY,
    identificadorvisita VARCHAR(15) NOT NULL,
    nombrerevision VARCHAR(15) NOT NULL,
    detalles VARCHAR(10) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    lugar VARCHAR(50) NOT NULL,
    comentarios VARCHAR(100) NOT NULL
);

-- crear tabla login--
CREATE TABLE usuariosconlogueo (
	-- run VARCHAR(15) NOT NULL,
    nombreusuario VARCHAR(15) NOT NULL,
    clave VARCHAR(10) NOT NULL
);

INSERT INTO usuariosconlogueo (nombreusuario, clave) VALUES
	('admin', '1234'),
    ('cliente', '1234'),
    ('profesional', '1234'
);

INSERT INTO usuarios (run, nombre, fechanacimiento, tipousuario) VALUES
    ('12345678-9', 'Isabella González', '1990-05-12', 'Admin'),
    ('98765432-1', 'Maximiliano Silva', '1988-09-20', 'Usuario'),
    ('87654321-0', 'Valentina Soto', '1995-11-03', 'Usuario'),
    ('23456789-1', 'Benjamín Carrasco', '1992-07-08', 'Usuario'),
    ('34567890-2', 'Florencia Vargas', '1994-02-16', 'Usuario'
);

INSERT INTO capacitaciones (nombrecapacitacion, rutcliente, dia, hora, lugar, duracion, cantidadasistentes) VALUES
	('Capacitación de Ventas', '123456789', '2023-07-05', '09:00:00', 'Sala A', '45 minutos', 20),
    ('Capacitación de Servicio al Cliente', '987654321', '2023-07-10', '14:30:00', 'Sala B', '2 horas', 15
);

SELECT CONCAT('CAP-0', id-1) AS identificador, nombrecapacitacion, rutcliente, dia, hora, lugar, duracion, cantidadasistentes FROM capacitaciones;

SELECT * FROM usuarios;
SELECT * FROM clientes;
SELECT * FROM profesionales;
SELECT * FROM administrativos;
SELECT * FROM capacitaciones;
SELECT * FROM accidentes;
SELECT * FROM visitas;
SELECT * FROM revision;
SELECT * FROM usuariosconlogueo;
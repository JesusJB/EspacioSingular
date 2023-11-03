create database EspacioSingular;

use EspacioSingular;

Create table Usuarios(
    nombreUsuario VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    contra VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL UNIQUE,
    CONSTRAINT PK_USUARIOS PRIMARY KEY (nombreUsuario, contra)
);

Create table Productos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200) NOT NULL,
    precio DOUBLE NOT NULL,
    stock INT NOT NULL,
    imagen VARCHAR(500) NOT NULL
);

Create table Personal(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    edad INT NOT NULL,
    signoZ VARCHAR(30) NOT NULL,
    puesto VARCHAR(30) NOT NULL,
    salario DOUBLE NOT NULL
);

create table Valoracion(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    puntuacion INT NOT NULL,
    comentario VARCHAR(200) NOT NULL,
    empleado INT NOT NULL, 
    nombreUsuario VARCHAR(50) NOT NULL,
    FOREIGN KEY (empleado) REFERENCES Personal(id),
    FOREIGN KEY (nombreUsuario) REFERENCES Usuarios(nombreUsuario)
);

create table Categoria(
    nombre VARCHAR(50) NOT NULL PRIMARY KEY
);

create table Servicios (
    nombre VARCHAR(100) NOT NULL PRIMARY KEY,
    descripcion VARCHAR(500) NOT NULL,
    nombre_categoria VARCHAR(50) NOT NULL,
    precio DOUBLE NOT NULL,
    FOREIGN KEY (nombre_categoria) REFERENCES Categoria(nombre)
);

create table Pedido (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idProducto INT NOT NULL,
    nombreUsuario VARCHAR(50) NOT NULL,
    direccion_usuario VARCHAR(100) NOT NULL,
    fechaRealizacion DATE NOT NULL,
    estado VARCHAR(50) NOT NULL,
    FOREIGN KEY (idProducto) REFERENCES Productos(id),
    FOREIGN KEY (nombreUsuario) REFERENCES Usuarios(nombreUsuario),
    FOREIGN KEY (direccion_usuario) REFERENCES Usuarios(direccion)
);

INSERT INTO `Usuarios` (`nombreUsuario`, `email`, `contra`, `direccion`) 
VALUES ("Admin", 'Admin12@gmail.com', 'AdminAdmin', 'Calle Cervantes');

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`) 
VALUES (NULL, 'Máquina Domestica Singer', 'Máquina Singer Mercury 8280', '150.95', '4', 'https://m.media-amazon.com/images/I/61UNdaUVOFL._AC_SX425_.jpg');

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`) 
VALUES (NULL, 'Máquina Industrial', 'Maquina Cabolisan ML8125', '200.55', '20', 'https://www.cabolisan.com/wp-content/uploads/2021/01/ML-8125.png');

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`) 
VALUES (NULL, 'Máquina Domestica Alfa', 'Máquina ALFA Style 40', '195.55', '10', 'https://m.media-amazon.com/images/I/81Cdywe+xoL._AC_SL1500_.jpg');

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`) 
VALUES (NULL, 'Remalladora', 'Máquina remalladora Overlock 8707', '339.55', '10', 'https://sgfm.elcorteingles.es/SGFM/dctm/MEDIA03/202001/14/00107751851663____8__640x640.jpg');

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`) 
VALUES (NULL, 'Patron Pantalon', 'Patron para pantalon unisex de adulto', '5.55', '60', 'https://i0.wp.com/ceruleancloset.com/wp-content/uploads/2020/02/patronaje_desde_cero_patron_base_pantalon_mujer_cabecera_1200x1200.jpg?resize=1020%2C600&ssl=1');
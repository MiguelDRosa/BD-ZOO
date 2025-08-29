CREATE DATABASE IF NOT EXISTS Zoologico;
USE Zoologico;

-- -----------------------------------------------------
-- Tabla Zoologico
-- -----------------------------------------------------
CREATE TABLE Zoologico (
    ID_Zoo INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL,
    Telefono VARCHAR(60),
    Direccion TEXT,
    Organizacion VARCHAR(60)
) ENGINE=InnoDB;

INSERT INTO Zoologico (ID_Zoo, Nombre, Telefono, Direccion, Organizacion) VALUES
(1, 'Zoológico de la Ciudad', '555-1234', 'Av. Paseo de la Reforma 123', 'Gobierno'),
(2, 'Zoológico del Norte', '555-5678', 'Calle 10 #45', 'Privado'),
(3, 'Zoológico del Sur', '555-8765', 'Calle 20 #78', 'Gobierno'),
(4, 'Zoológico del Este', '555-4321', 'Av. Las Torres 150', 'Privado'),
(5, 'Zoológico del Oeste', '555-3456', 'Calle del Mar 33', 'Gobierno'),
(6, 'Zoológico de la Selva', '555-7890', 'Calle de la Selva 99', 'Privado'),
(7, 'Zoológico Marítimo', '555-1122', 'Calle del Océano 10', 'Gobierno'),
(8, 'Zoológico de Aventura', '555-2233', 'Calle de la Aventura 56', 'Privado'),
(9, 'Zoológico del Parque Nacional', '555-3344', 'Calle del Parque 44', 'Gobierno'),
(10, 'Zoológico Infantil', '555-4455', 'Calle de los Niños 22', 'Privado');


-- -----------------------------------------------------
-- Tabla Actividades
-- -----------------------------------------------------
CREATE TABLE Actividades (
    ID_Actividades INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL,
    Descripcion TEXT
) ENGINE=InnoDB;
INSERT INTO Actividades (ID_Actividades, Nombre, Descripcion) VALUES
(1, 'Alimentación de Animales', 'Actividades relacionadas con la alimentación de los animales del zoológico.'),
(2, 'Educación Ambiental', 'Programas educativos para visitantes sobre la conservación del medio ambiente.'),
(3, 'Tours Guiados', 'Recorridos guiados por el zoológico para conocer la fauna y flora.'),
(4, 'Charlas Interactivas', 'Charlas educativas sobre especies en peligro de extinción.'),
(5, 'Cuidado de Especies', 'Actividades de cuidado y atención médica a los ejemplares.'),
(6, 'Mantenimiento de Hábitats', 'Labores de mantenimiento y adecuación de los hábitats de los animales.'),
(7, 'Investigación Científica', 'Actividades relacionadas con la investigación sobre la biología de las especies.'),
(8, 'Eventos Especiales', 'Actividades y eventos especiales, como exhibiciones temporales.'),
(9, 'Programas de Reproducción', 'Programas de cría y reproducción de especies en peligro.'),
(10, 'Voluntariado', 'Actividades para involucrar a voluntarios en el cuidado del zoológico.'),
(11, 'Exhibiciones Temporales', 'Muestra de animales o actividades especiales durante eventos específicos.'),
(12, 'Campamentos de Verano', 'Campamentos para niños sobre la vida animal y conservación.'),
(13, 'Actividades Recreativas', 'Juegos y actividades recreativas para el disfrute de los visitantes.'),
(14, 'Entrenamiento Animal', 'Entrenamiento de animales para facilitar su manejo y cuidado.'),
(15, 'Conservación de Hábitats', 'Actividades dirigidas a la conservación de los hábitats naturales.'),
(16, 'Rescate de Especies', 'Actividades de rescate y rehabilitación de especies en peligro.'),
(17, 'Talleres de Manualidades', 'Talleres para niños donde pueden hacer manualidades relacionadas con los animales.'),
(18, 'Fomento a la Lectura', 'Actividades que promueven la lectura de libros sobre animales y conservación.'),
(19, 'Días de Limpieza', 'Eventos de limpieza y mantenimiento del zoológico por parte de voluntarios.'),
(20, 'Jornadas de Sensibilización', 'Actividades para sensibilizar al público sobre la importancia de la conservación.');

-- -----------------------------------------------------
-- Tabla Rol
-- -----------------------------------------------------
CREATE TABLE Rol (
    ID_Rol INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL,
    Descripcion TEXT,
    ID_Actividades INT,
    FOREIGN KEY (ID_Actividades) REFERENCES Actividades(ID_Actividades) ON DELETE SET NULL
) ENGINE=InnoDB;
CREATE INDEX idx_id_actividades ON Rol(ID_Actividades);

INSERT INTO Rol (ID_Rol, Nombre, Descripcion, ID_Actividades) VALUES
(1, 'Cuidador de Animales', 'Responsable del cuidado diario de los animales.', 1),
(2, 'Guía de Tours', 'Encargado de dirigir y guiar a los visitantes durante los tours.', 3),
(3, 'Educador Ambiental', 'Proporciona información sobre conservación y educación ambiental.', 2),
(4, 'Veterinario', 'Responsable de la atención médica de los ejemplares.', 5),
(5, 'Personal de Mantenimiento', 'Encargado del mantenimiento y limpieza de instalaciones.', 6),
(6, 'Investigador de Especies', 'Realiza investigaciones sobre la biología de los animales.', 7),
(7, 'Coordinador de Eventos', 'Planifica y organiza eventos especiales en el zoológico.', 8),
(8, 'Entrenador de Animales', 'Entrena a los animales para facilitar su manejo.', 14),
(9, 'Voluntario', 'Ayuda en diversas actividades del zoológico.', 10),
(10, 'Responsable de Conservación', 'Dirige las actividades de conservación de especies.', 16),
(11, 'Facilitador de Talleres', 'Encargado de llevar a cabo talleres para niños y adultos.', 18),
(12, 'Gestor de Proyectos', 'Supervisa y coordina proyectos de mejora en el zoológico.', 7),
(13, 'Promotor de Programas de Reproducción', 'Encargado de los programas de reproducción de especies.', 9),
(14, 'Coordinador de Campamentos', 'Organiza campamentos de verano para jóvenes.', 12),
(15, 'Responsable de Sensibilización', 'Diseña y ejecuta campañas de sensibilización.', 19),
(16, 'Gerente del Zoológico', 'Supervisa todas las operaciones del zoológico.', 1),
(17, 'Coordinador de Limpieza', 'Organiza y supervisa las jornadas de limpieza del zoológico.', 20),
(18, 'Facilitador de Actividades Recreativas', 'Organiza actividades recreativas para los visitantes.', 13),
(19, 'Encargado de Exhibiciones', 'Administra y coordina las exhibiciones temporales.', 11),
(20, 'Coordinador de Programas de Voluntariado', 'Gestor de los programas de voluntariado del zoológico.', 10);


-- -----------------------------------------------------
-- Tabla Area
-- -----------------------------------------------------
CREATE TABLE Area (
    ID_Area INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL,
    Color VARCHAR(15) UNIQUE,
    ID_Rol INT,
    FOREIGN KEY (ID_Rol) REFERENCES Rol(ID_Rol) ON DELETE SET NULL
) ENGINE=InnoDB;
CREATE INDEX idx_id_rol ON Area(ID_Rol);

INSERT INTO Area (ID_Area, Nombre, Color, ID_Rol) VALUES
(1, 'Área de Mamíferos', 'Verde', 1),
(2, 'Área de Aves', 'Azul', 2),
(3, 'Área de Reptiles', 'Amarillo', 3),
(4, 'Área de Acuáticos', 'Cian', 4),
(5, 'Área de Insectos', 'Marrón', 5),
(6, 'Área de Animales en Peligro', 'Naranja', 6),
(7, 'Área de Conservación', 'Rosa', 7),
(8, 'Área de Educación', 'Violeta', 8),
(9, 'Área de Investigación', 'Gris', 9),
(10, 'Área de Especies Endémicas', 'Rojo', 10),
(11, 'Área de Hábitats Naturales', 'Oliva', 11),
(12, 'Área de Exhibiciones Especiales', 'Turquesa', 12),
(13, 'Área de Voluntariado', 'Dorado', 13),
(14, 'Área de Servicios al Visitante', 'Beige', 14),
(15, 'Área de Programas Recreativos', 'Lavanda', 15),
(16, 'Área de Campamentos', 'Plata', 16),
(17, 'Área de Limpieza y Mantenimiento', 'Blanco', 17),
(18, 'Área de Sensibilización', 'Menta', 18),
(19, 'Área de Talleres y Manualidades', 'Púrpura', 19),
(20, 'Área de Actividades al Aire Libre', 'Navy', 20);

-- -----------------------------------------------------
-- Tabla Empleado 
-- -----------------------------------------------------
CREATE TABLE Empleado (
    ID_Empleado INT AUTO_INCREMENT PRIMARY KEY,
    ID_Zoo INT NOT NULL,
    Nombre VARCHAR(60) NOT NULL,
    Apaterno VARCHAR(60) NOT NULL,
    Amaterno VARCHAR(60),
    Fnacimiento DATE,
    Movil VARCHAR(10),
    RFC VARCHAR(13) UNIQUE,
    Estudios BOOLEAN,
    Genero VARCHAR(26),
    ID_Area INT NULL,  -- Se permite NULL en ID_Area para soportar ON DELETE SET NULL
    Jornada ENUM('Matutino', 'Vespertino'),
    FOREIGN KEY (ID_Zoo) REFERENCES Zoologico(ID_Zoo) ON DELETE CASCADE,
    FOREIGN KEY (ID_Area) REFERENCES Area(ID_Area) ON DELETE SET NULL
) ENGINE=InnoDB;
CREATE INDEX idx_id_zoo ON Empleado(ID_Zoo);
CREATE INDEX idx_id_area ON Empleado(ID_Area);


INSERT INTO Empleado (ID_Empleado, ID_Zoo, Nombre, Apaterno, Amaterno, Fnacimiento, Movil, RFC, Estudios, Genero, ID_Area, Jornada) VALUES
(1, 1, 'Ana', 'Gómez', 'Pérez', '1990-05-12', '1234567890', 'GOPA9005124Q1', TRUE, 'Femenino', 1, 'Matutino'),
(2, 1, 'Carlos', 'Rodríguez', 'Méndez', '1985-08-22', '2345678901', 'ROMC850822H1', FALSE, 'Masculino', 2, 'Vespertino'),
(3, 1, 'Luis', 'Martínez', 'Ramírez', '1987-11-14', '3456789012', 'MALR871114P2', TRUE, 'Masculino', 3, 'Matutino'),
(4, 1, 'María', 'López', 'García', '1995-01-03', '4567890123', 'LOPM950103V2', TRUE, 'Femenino', 4, 'Vespertino'),
(5, 1, 'José', 'Hernández', 'Sánchez', '1980-03-19', '5678901234', 'HEJJ800319P5', FALSE, 'Masculino', 5, 'Matutino'),
(6, 1, 'Patricia', 'González', 'Martínez', '1992-04-15', '6789012345', 'GOPA920415S6', TRUE, 'Femenino', 6, 'Vespertino'),
(7, 1, 'Juan', 'Fernández', 'Lozano', '1988-07-09', '7890123456', 'FEJJ880709J8', FALSE, 'Masculino', 7, 'Matutino'),
(8, 1, 'Raquel', 'Pérez', 'Ramírez', '1993-12-25', '8901234567', 'PERR931225M9', TRUE, 'Femenino', 8, 'Vespertino'),
(9, 1, 'Miguel', 'Serrano', 'Torres', '1990-02-17', '9012345678', 'SEMT900217R0', FALSE, 'Masculino', 9, 'Matutino'),
(10, 1, 'Verónica', 'Díaz', 'Álvarez', '1985-05-30', '0123456789', 'DIVA850530D0', TRUE, 'Femenino', 10, 'Vespertino'),
(11, 1, 'Roberto', 'Ruiz', 'González', '1982-06-11', '1234567890', 'RURG820611P3', FALSE, 'Masculino', 11, 'Matutino'),
(12, 1, 'María', 'Jiménez', 'Vázquez', '1996-09-18', '2345678901', 'JIVM960918Q4', TRUE, 'Femenino', 12, 'Vespertino'),
(13, 1, 'José', 'Álvarez', 'Torres', '1990-10-05', '3456789012', 'ALTJ900105H6', FALSE, 'Masculino', 13, 'Matutino'),
(14, 1, 'Laura', 'Ramírez', 'Martínez', '1986-02-21', '4567890123', 'RMLL860221S7', TRUE, 'Femenino', 14, 'Vespertino'),
(15, 1, 'Andrés', 'Morales', 'Castro', '1991-11-13', '5678901234', 'MOCS911113A9', FALSE, 'Masculino', 15, 'Matutino'),
(16, 1, 'Patricia', 'García', 'López', '1994-05-10', '6789012345', 'GALO940510Q1', TRUE, 'Femenino', 16, 'Vespertino'),
(17, 1, 'Carlos', 'Martínez', 'Sánchez', '1983-01-24', '7890123456', 'MASC830124Q2', FALSE, 'Masculino', 17, 'Matutino'),
(18, 1, 'Sofía', 'Mendoza', 'Luna', '1992-04-09', '8901234567', 'MELS920409F5', TRUE, 'Femenino', 18, 'Vespertino'),
(19, 1, 'Jorge', 'Castillo', 'Hernández', '1987-08-17', '9012345678', 'CAHJ870817P6', FALSE, 'Masculino', 19, 'Matutino'),
(20, 1, 'Liliana', 'Ruiz', 'García', '1990-12-03', '0123456789', 'RUGL900103Q7', TRUE, 'Femenino', 20, 'Vespertino'),
(21, 1, 'Samuel', 'Cruz', 'Serrano', '1984-06-05', '1234567890', 'CRUS840605R1', TRUE, 'Masculino', 1, 'Matutino'),
(22, 1, 'Bárbara', 'Gómez', 'Vázquez', '1992-10-29', '2345678901', 'GOVB921029Q3', TRUE, 'Femenino', 2, 'Vespertino'),
(23, 1, 'Ricardo', 'González', 'Martínez', '1986-03-16', '3456789012', 'GOMR860316H4', FALSE, 'Masculino', 3, 'Matutino'),
(24, 1, 'Tania', 'Moreno', 'Díaz', '1995-07-22', '4567890123', 'MORD950722F5', TRUE, 'Femenino', 4, 'Vespertino'),
(25, 1, 'Luis', 'Fernández', 'Cortés', '1993-11-09', '5678901234', 'FELC931109V7', FALSE, 'Masculino', 5, 'Matutino'),
(26, 1, 'Marta', 'Pérez', 'Salazar', '1985-04-25', '6789012345', 'PESM850425M6', TRUE, 'Femenino', 6, 'Vespertino'),
(27, 1, 'Carlos', 'Jiménez', 'González', '1990-01-17', '7890123456', 'JIGC900117R9', TRUE, 'Masculino', 7, 'Matutino'),
(28, 1, 'Felipe', 'Sánchez', 'Hernández', '1983-10-14', '8901234567', 'SAHF831014N4', FALSE, 'Masculino', 8, 'Vespertino'),
(29, 1, 'Claudia', 'Ramírez', 'López', '1994-02-22', '9012345678', 'RALC940222K1', TRUE, 'Femenino', 9, 'Matutino'),
(30, 1, 'Javier', 'Martínez', 'Gómez', '1992-06-30', '0123456789', 'MJGJ920630F0', FALSE, 'Masculino', 10, 'Vespertino'),
(31, 1, 'Mónica', 'Serrano', 'González', '1991-09-19', '1234567890', 'SEGJ910919N7', TRUE, 'Femenino', 11, 'Matutino'),
(32, 1, 'Andrés', 'López', 'Hernández', '1993-01-28', '2345678901', 'LOHA930128D2', FALSE, 'Masculino', 12, 'Vespertino'),
(33, 1, 'Sofía', 'González', 'Martínez', '1989-10-10', '3456789012', 'GOMF891010D0', TRUE, 'Femenino', 13, 'Matutino'),
(34, 1, 'Carlos', 'Hernández', 'Ramírez', '1987-03-12', '4567890123', 'HEHC870312J9', FALSE, 'Masculino', 14, 'Vespertino'),
(35, 1, 'Patricia', 'Pérez', 'Sánchez', '1988-07-04', '5678901234', 'PESP880704M2', TRUE, 'Femenino', 15, 'Matutino'),
(36, 1, 'Luis', 'Gómez', 'Ruiz', '1992-09-25', '6789012345', 'GOLR920925A3', FALSE, 'Masculino', 16, 'Vespertino'),
(37, 1, 'Ricardo', 'Serrano', 'Martínez', '1991-12-19', '7890123456', 'SEMR911219R7', TRUE, 'Masculino', 17, 'Matutino'),
(38, 1, 'Alejandra', 'González', 'López', '1994-10-11', '8901234567', 'GOLA941011H2', TRUE, 'Femenino', 18, 'Vespertino'),
(39, 1, 'Adrián', 'Pérez', 'Serrano', '1990-04-03', '9012345678', 'PESA900403J0', FALSE, 'Masculino', 19, 'Matutino'),
(40, 1, 'Violeta', 'Morales', 'Ramírez', '1985-08-22', '0123456789', 'MORV850822C7', TRUE, 'Femenino', 20, 'Vespertino'),
(41, 1, 'Isabel', 'Sánchez', 'Castro', '1983-01-19', '1234567890', 'SACJ830119R6', TRUE, 'Femenino', 1, 'Matutino'),
(42, 1, 'Eduardo', 'Gómez', 'Pérez', '1996-12-04', '2345678901', 'GOPL961204B8', FALSE, 'Masculino', 2, 'Vespertino'),
(43, 1, 'María', 'Moreno', 'López', '1990-10-12', '3456789012', 'MOLM901012P3', TRUE, 'Femenino', 3, 'Matutino'),
(44, 1, 'Julio', 'Hernández', 'Vázquez', '1989-02-28', '4567890123', 'HEVJ890228P7', FALSE, 'Masculino', 4, 'Vespertino'),
(45, 1, 'Elena', 'González', 'Serrano', '1992-11-23', '5678901234', 'GOLS921123D5', TRUE, 'Femenino', 5, 'Matutino'),
(46, 1, 'Pablo', 'Jiménez', 'Moreno', '1985-12-16', '6789012345', 'JIMP851216V3', FALSE, 'Masculino', 6, 'Vespertino'),
(47, 1, 'Susana', 'Serrano', 'Ramírez', '1991-03-10', '7890123456', 'SERS910310M7', TRUE, 'Femenino', 7, 'Matutino'),
(48, 1, 'Francisco', 'García', 'Martínez', '1994-07-14', '8901234567', 'GARM940714J4', FALSE, 'Masculino', 8, 'Vespertino'),
(49, 1, 'Ana', 'Rodríguez', 'López', '1993-02-05', '9012345678', 'ROLK930205R0', TRUE, 'Femenino', 9, 'Matutino'),
(50, 1, 'Raúl', 'Sánchez', 'Méndez', '1986-09-29', '0123456789', 'SAMR860929Q9', FALSE, 'Masculino', 10, 'Vespertino'),
(51, 2, 'Sara', 'Luna', 'González', '1984-09-12', '1234567890', 'LUGS840912A1', TRUE, 'Femenino', 1, 'Matutino'),
(52, 2, 'Pedro', 'González', 'Pérez', '1990-02-11', '2345678901', 'GOPP900211B2', FALSE, 'Masculino', 2, 'Vespertino'),
(53, 2, 'Elena', 'Martínez', 'Salazar', '1987-04-05', '3456789012', 'MASP870405M3', TRUE, 'Femenino', 3, 'Matutino'),
(54, 2, 'Carlos', 'Rodríguez', 'Moreno', '1991-05-19', '4567890123', 'ROMC910519H4', FALSE, 'Masculino', 4, 'Vespertino'),
(55, 2, 'Juan', 'Gómez', 'Vázquez', '1983-07-20', '5678901234', 'GOVJ830720R5', TRUE, 'Masculino', 5, 'Matutino'),
(56, 2, 'Lorena', 'Hernández', 'Serrano', '1992-01-28', '6789012345', 'HESL920128Q6', TRUE, 'Femenino', 6, 'Vespertino'),
(57, 2, 'Ricardo', 'Sánchez', 'Mendoza', '1989-10-02', '7890123456', 'SAMR891002X7', FALSE, 'Masculino', 7, 'Matutino'),
(58, 2, 'Raquel', 'Rodríguez', 'Pérez', '1993-11-25', '8901234567', 'ROPR931125L8', TRUE, 'Femenino', 8, 'Vespertino'),
(59, 2, 'Fernando', 'Vega', 'López', '1982-06-30', '9012345678', 'VELF820630K9', FALSE, 'Masculino', 9, 'Matutino'),
(60, 2, 'Jessica', 'Serrano', 'Sánchez', '1994-03-12', '0123456789', 'SEJS940312Q0', TRUE, 'Femenino', 10, 'Vespertino'),
(61, 2, 'Antonio', 'González', 'Gutiérrez', '1988-08-25', '1234567890', 'GOGA880825P1', FALSE, 'Masculino', 11, 'Matutino'),
(62, 2, 'Claudia', 'Morales', 'Cortés', '1990-09-17', '2345678901', 'MORC900917K2', TRUE, 'Femenino', 12, 'Vespertino'),
(63, 2, 'José', 'López', 'Salazar', '1985-12-14', '3456789012', 'LOPS851214A3', FALSE, 'Masculino', 13, 'Matutino'),
(64, 2, 'Sandra', 'Martínez', 'Gómez', '1996-03-09', '4567890123', 'MAGS960309C4', TRUE, 'Femenino', 14, 'Vespertino'),
(65, 2, 'Felipe', 'Pérez', 'Ruiz', '1991-05-27', '5678901234', 'PEPF910527V5', FALSE, 'Masculino', 15, 'Matutino'),
(66, 2, 'Margarita', 'Serrano', 'González', '1984-02-08', '6789012345', 'SEMG840208K6', TRUE, 'Femenino', 16, 'Vespertino'),
(67, 2, 'David', 'Álvarez', 'López', '1993-07-15', '7890123456', 'ALOD930715L7', FALSE, 'Masculino', 17, 'Matutino'),
(68, 2, 'Gabriela', 'Luna', 'Vázquez', '1990-03-27', '8901234567', 'LUVG900327M8', TRUE, 'Femenino', 18, 'Vespertino'),
(69, 2, 'Luis', 'Pérez', 'Hernández', '1987-10-21', '9012345678', 'PEHL871021X9', FALSE, 'Masculino', 19, 'Matutino'),
(70, 2, 'Ricardo', 'García', 'Serrano', '1986-01-14', '0123456789', 'GARS860114Q0', TRUE, 'Masculino', 20, 'Vespertino'),
(71, 2, 'Andrea', 'Moreno', 'Rodríguez', '1992-12-30', '1234567890', 'MORR921230A1', TRUE, 'Femenino', 1, 'Matutino'),
(72, 2, 'Pedro', 'Ramírez', 'Gutiérrez', '1991-08-17', '2345678901', 'RAGP910817B2', FALSE, 'Masculino', 2, 'Vespertino'),
(73, 2, 'Patricia', 'Hernández', 'Salazar', '1994-06-08', '3456789012', 'HESP940608P3', TRUE, 'Femenino', 3, 'Matutino'),
(74, 2, 'Julio', 'Serrano', 'Vega', '1987-11-21', '4567890123', 'SEVJ871121M4', FALSE, 'Masculino', 4, 'Vespertino'),
(75, 2, 'Javier', 'González', 'Sánchez', '1990-01-06', '5678901234', 'GOSJ900106R5', TRUE, 'Masculino', 5, 'Matutino'),
(76, 2, 'Lorena', 'Martínez', 'González', '1989-07-03', '6789012345', 'MAGL890703S6', TRUE, 'Femenino', 6, 'Vespertino'),
(77, 2, 'Enrique', 'Serrano', 'Martínez', '1993-10-15', '7890123456', 'SEME931015T7', FALSE, 'Masculino', 7, 'Matutino'),
(78, 2, 'Luz', 'Vega', 'Morales', '1985-09-11', '8901234567', 'VEML850911U8', TRUE, 'Femenino', 8, 'Vespertino'),
(79, 2, 'Ramón', 'Gómez', 'Rodríguez', '1992-07-22', '9012345678', 'GORM920722V9', FALSE, 'Masculino', 9, 'Matutino'),
(80, 2, 'Ana', 'Hernández', 'Gómez', '1990-04-30', '0123456789', 'HEGA900430A0', TRUE, 'Femenino', 10, 'Vespertino'),
(81, 3, 'Mario', 'Gómez', 'Rodríguez', '1986-11-14', '1234567890', 'GORM861114H1', TRUE, 'Masculino', 1, 'Matutino'),
(82, 3, 'Lucía', 'Vázquez', 'Gómez', '1990-05-30', '2345678901', 'VAGL900530I2', FALSE, 'Femenino', 2, 'Vespertino'),
(83, 3, 'Carlos', 'Pérez', 'Moreno', '1983-01-19', '3456789012', 'PEMC830119J3', TRUE, 'Masculino', 3, 'Matutino'),
(84, 3, 'Raquel', 'López', 'Salazar', '1992-03-22', '4567890123', 'LOSR920322K4', FALSE, 'Femenino', 4, 'Vespertino'),
(85, 3, 'Andrés', 'Sánchez', 'González', '1991-08-12', '5678901234', 'SAGG910812L5', TRUE, 'Masculino', 5, 'Matutino'),
(86, 3, 'Laura', 'Vega', 'Martínez', '1988-12-24', '6789012345', 'VEML881224M6', FALSE, 'Femenino', 6, 'Vespertino'),
(87, 3, 'Antonio', 'García', 'Rodríguez', '1990-07-05', '7890123456', 'GARX900705N7', TRUE, 'Masculino', 7, 'Matutino'),
(88, 3, 'Elena', 'Morales', 'Serrano', '1995-01-17', '8901234567', 'MOSE950117O8', FALSE, 'Femenino', 8, 'Vespertino'),
(89, 3, 'Ricardo', 'Hernández', 'Vázquez', '1989-02-14', '9012345678', 'HEVR890214P9', TRUE, 'Masculino', 9, 'Matutino'),
(90, 3, 'Gabriela', 'Serrano', 'González', '1993-04-28', '0123456789', 'SEGG930428Q0', FALSE, 'Femenino', 10, 'Vespertino'),
(91, 3, 'Fernando', 'Martínez', 'Pérez', '1985-11-05', '1234567890', 'MAPF851105R1', TRUE, 'Masculino', 11, 'Matutino'),
(92, 3, 'Claudia', 'González', 'Salazar', '1992-08-21', '2345678901', 'GOSC920821S2', FALSE, 'Femenino', 12, 'Vespertino'),
(93, 3, 'Sergio', 'López', 'Morales', '1987-05-12', '3456789012', 'LOMS870512T3', TRUE, 'Masculino', 13, 'Matutino'),
(94, 3, 'Margarita', 'García', 'Rodríguez', '1991-12-06', '4567890123', 'GARX911206U4', FALSE, 'Femenino', 14, 'Vespertino'),
(95, 3, 'José', 'Pérez', 'Martínez', '1994-03-18', '5678901234', 'PEMJ940318V5', TRUE, 'Masculino', 15, 'Matutino'),
(96, 3, 'Patricia', 'Hernández', 'Gómez', '1984-09-22', '6789012345', 'HEGP840922W6', FALSE, 'Femenino', 16, 'Vespertino'),
(97, 3, 'José', 'Rodríguez', 'Moreno', '1990-04-17', '7890123456', 'ROMJ900417X7', TRUE, 'Masculino', 17, 'Matutino'),
(98, 3, 'Sandra', 'Vega', 'Pérez', '1992-11-10', '8901234567', 'VEPS921110Y8', FALSE, 'Femenino', 18, 'Vespertino'),
(99, 3, 'Luis', 'Martínez', 'López', '1988-06-13', '9012345678', 'MALX880613Z9', TRUE, 'Masculino', 19, 'Matutino'),
(100, 3, 'Estela', 'Sánchez', 'González', '1986-05-23', '0123456789', 'SAGE860523A0', FALSE, 'Femenino', 20, 'Vespertino'),
(101, 3, 'Eduardo', 'Gómez', 'Vega', '1993-09-02', '1234567890', 'GOVE930902B1', TRUE, 'Masculino', 1, 'Matutino'),
(102, 3, 'Carmen', 'Rodríguez', 'Gómez', '1990-10-18', '2345678901', 'ROGC901018C2', FALSE, 'Femenino', 2, 'Vespertino'),
(103, 3, 'Luis', 'Hernández', 'Serrano', '1987-11-29', '3456789012', 'HESL871129D3', TRUE, 'Masculino', 3, 'Matutino'),
(104, 3, 'Alejandra', 'González', 'Vega', '1991-02-10', '4567890123', 'GOVX910210E4', FALSE, 'Femenino', 4, 'Vespertino'),
(105, 3, 'Felipe', 'Martínez', 'Salazar', '1986-03-14', '5678901234', 'MATS860314F5', TRUE, 'Masculino', 5, 'Matutino'),
(106, 3, 'Adriana', 'Rodríguez', 'González', '1993-07-30', '6789012345', 'ROGA930730G6', FALSE, 'Femenino', 6, 'Vespertino'),
(107, 3, 'Manuel', 'Pérez', 'Moreno', '1990-06-18', '7890123456', 'PEMM900618H7', TRUE, 'Masculino', 7, 'Matutino'),
(108, 3, 'Ricardo', 'Serrano', 'López', '1989-09-02', '8901234567', 'SELR890902I8', FALSE, 'Masculino', 8, 'Vespertino'),
(109, 3, 'Beatriz', 'Hernández', 'Serrano', '1992-12-01', '9012345678', 'HESB921201J9', TRUE, 'Femenino', 9, 'Matutino'),
(110, 3, 'David', 'Vega', 'Pérez', '1994-02-26', '0123456789', 'VEGD940226K0', FALSE, 'Masculino', 10, 'Vespertino'),
(111, 3, 'María', 'Gómez', 'Rodríguez', '1988-08-20', '1234567890', 'GORM880820L1', TRUE, 'Femenino', 11, 'Matutino'),
(112, 3, 'Alejandro', 'Martínez', 'Sánchez', '1990-01-08', '2345678901', 'MASA900108M2', FALSE, 'Masculino', 12, 'Vespertino'),
(113, 3, 'Luis', 'Serrano', 'González', '1991-05-23', '3456789012', 'SEGL910523N3', TRUE, 'Masculino', 13, 'Matutino'),
(114, 3, 'María', 'Sánchez', 'Gómez', '1993-04-17', '4567890123', 'SAGM93041745', FALSE, 'Femenino', 14, 'Vespertino'),
(115, 3, 'Juan', 'Vega', 'Moreno', '1987-12-11', '5678901234', 'VMJ871211P54', TRUE , 'Masculino', 15, 'Matutino'),
(116, 3, 'Diana', 'Martínez', 'Vega', '1992-06-06', '6789012345', 'MAVD920606Q6', FALSE, 'Femenino', 16, 'Vespertino'),
(117, 3, 'Javier', 'Gómez', 'Serrano', '1994-08-29', '7890123456', 'GOSJ94089R7', TRUE, 'Masculino', 17, 'Matutino'),
(118, 3, 'Patricia', 'Pérez', 'López', '1988-02-18', '8901234567', 'PEPL880218S8', FALSE, 'Femenino', 18, 'Vespertino'),
(119, 3, 'Alfredo', 'Serrano', 'Rodríguez', '1991-11-15', '9012345678', 'SERA911115T9', TRUE, 'Masculino', 19, 'Matutino'),
(120, 3, 'Verónica', 'Hernández', 'Vega', '1989-10-29', '0123456789', 'HEVA891029U0', FALSE, 'Femenino', 20, 'Vespertino'),
(121, 3, 'Rafael', 'Martínez', 'Gómez', '1990-07-22', '1234567890', 'MARG900722V1', TRUE, 'Masculino', 1, 'Matutino'),
(122, 3, 'Esteban', 'Pérez', 'González', '1988-03-13', '2345678901', 'PEGX880313W2', FALSE, 'Masculino', 2, 'Vespertino'),
(123, 3, 'Juliana', 'Gómez', 'Salazar', '1994-09-28', '3456789012', 'GOSJ940928X3', TRUE, 'Femenino', 3, 'Matutino'),
(124, 3, 'Margarita', 'Sánchez', 'Martínez', '1991-11-02', '4567890123', 'SAMI911102Y4', FALSE, 'Femenino', 4, 'Vespertino'),
(125, 3, 'Víctor', 'Vega', 'Rodríguez', '1989-12-12', '5678901234', 'VEGV891212Z5', TRUE, 'Masculino', 5, 'Matutino'),
(126, 4, 'Roberto', 'López', 'González', '1987-11-18', '1234567890', 'LOGR871118A1', TRUE, 'Masculino', 1, 'Matutino'),
(127, 4, 'Verónica', 'Vega', 'Serrano', '1992-01-30', '2345678901', 'VESV920130B2', FALSE, 'Femenino', 2, 'Vespertino'),
(128, 4, 'José', 'Pérez', 'Sánchez', '1989-05-22', '3456789012', 'PESJ890522C3', TRUE, 'Masculino', 3, 'Matutino'),
(129, 4, 'Mariana', 'Hernández', 'López', '1991-02-16', '4567890123', 'HELM910216D4', FALSE, 'Femenino', 4, 'Vespertino'),
(130, 4, 'Margarita', 'Rodríguez', 'Vega', '1992-12-05', '0123456789', 'ROVM921205J0', FALSE, 'Femenino', 10, 'Vespertino'),
(131, 4, 'Ricardo', 'Martínez', 'Serrano', '1989-03-19', '1234567890', 'MARS890319K1', TRUE, 'Masculino', 11, 'Matutino'),
(132, 4, 'Elena', 'Pérez', 'González', '1993-07-25', '2345678901', 'PEGX930725L2', FALSE, 'Femenino', 12, 'Vespertino'),
(133, 4, 'Oscar', 'Serrano', 'Morales', '1991-01-10', '3456789012', 'SEMO910110M3', TRUE, 'Masculino', 13, 'Matutino'),
(134, 4, 'Lucía', 'Gómez', 'Rodríguez', '1990-11-07', '4567890123', 'GOLR901107N4', FALSE, 'Femenino', 14, 'Vespertino'),
(135, 4, 'Martín', 'Hernández', 'Sánchez', '1985-02-24', '5678901234', 'HESM850224O5', TRUE, 'Masculino', 15, 'Matutino'),
(136, 4, 'Paola', 'Martínez', 'Vega', '1992-04-13', '6789012345', 'MAVP920413P6', FALSE, 'Femenino', 16, 'Vespertino'),
(137, 4, 'Gerardo', 'Rodríguez', 'Serrano', '1990-12-17', '7890123456', 'ROSG901217Q7', TRUE, 'Masculino', 17, 'Matutino'),
(138, 4, 'Gabriela', 'González', 'López', '1987-08-09', '8901234567', 'GOLL870809R8', FALSE, 'Femenino', 18, 'Vespertino'),
(139, 4, 'Alejandro', 'Vega', 'González', '1993-06-21', '9012345678', 'VEGA930621S9', TRUE, 'Masculino', 19, 'Matutino'),
(140, 4, 'Isabel', 'Serrano', 'Pérez', '1991-09-11', '0123456789', 'SEPI910911T0', FALSE, 'Femenino', 20, 'Vespertino'),
(141, 4, 'Tomás', 'Martínez', 'Vega', '1988-05-15', '1234567890', 'MAVT880515U1', TRUE,  'Masculino', 1, 'Matutino'),
(142, 4, 'José', 'Rodríguez', 'Serrano', '1992-10-02', '2345678901', 'RODJ921002V2', FALSE,  'Masculino', 2, 'Vespertino'),
(143, 4, 'Claudia', 'Martínez', 'González', '1989-12-10', '3456789012', 'MAGC891210W3', TRUE, 'Femenino', 3, 'Matutino'),
(144, 4, 'Esteban', 'Gómez', 'Vega', '1986-07-02', '4567890123', 'GOVE860702X4', FALSE,  'Masculino', 4, 'Vespertino'),
(145, 4, 'Alma', 'Serrano', 'Rodríguez', '1993-09-19', '5678901234', 'SERA930919Y5', TRUE,  'Femenino', 5, 'Matutino'),
(146, 4, 'Ricardo', 'Vega', 'Serrano', '1990-05-23', '6789012345', 'VESR900523Z6', FALSE,  'Masculino', 6, 'Vespertino'),
(147, 4, 'Lucía', 'González', 'Hernández', '1987-03-16', '7890123456', 'GOHL870316A7', TRUE,  'Femenino', 7, 'Matutino'),
(148, 4, 'Antonio', 'Martínez', 'González', '1989-11-14', '8901234567', 'MAGX891114B8', FALSE,  'Masculino', 8, 'Vespertino'),
(149, 4, 'Verónica', 'Pérez', 'Serrano', '1991-06-01', '9012345678', 'PESV910601C9', TRUE,  'Femenino', 9, 'Matutino'),
(150, 4, 'Raúl', 'Gómez', 'Rodríguez', '1990-02-28', '0123456789', 'GORG900228D0', FALSE,  'Masculino', 10, 'Vespertino'),
(151, 5, 'Fernando', 'García', 'Martínez', '1985-01-15', '1234567890', 'GAMF850115A1', TRUE,  'Masculino', 1, 'Matutino'),
(152, 5, 'Gabriela', 'López', 'Hernández', '1991-05-10', '2345678901', 'LOHG910510B2', FALSE, 'Femenino', 2, 'Vespertino'),
(153, 5, 'Carlos', 'Rodríguez', 'Pérez', '1990-09-20', '3456789012', 'ROPC900920C3', TRUE,  'Masculino', 3, 'Matutino'),
(154, 5, 'Laura', 'Serrano', 'González', '1989-12-03', '4567890123', 'SEGL891203D4', FALSE,  'Femenino', 4, 'Vespertino'),
(155, 5, 'Juan', 'Martínez', 'Vega', '1987-03-07', '5678901234', 'MAVJ870307E5', TRUE,  'Masculino', 5, 'Matutino'),
(156, 5, 'Patricia', 'González', 'Rodríguez', '1992-02-16', '6789012345', 'GOPR920216F6', FALSE,  'Femenino', 6, 'Vespertino'),
(157, 5, 'Antonio', 'Hernández', 'Serrano', '1990-04-25', '7890123456', 'HESA900425G7', TRUE,  'Masculino', 7, 'Matutino'),
(158, 5, 'Alicia', 'Pérez', 'Martínez', '1989-07-18', '8901234567', 'PEMA890718H8', FALSE,  'Femenino', 8, 'Vespertino'),
(159, 5, 'Ricardo', 'Vega', 'González', '1986-11-12', '9012345678', 'VEGR861112I9', TRUE,  'Masculino', 9, 'Matutino'),
(160, 5, 'Elena', 'Serrano', 'Rodríguez', '1991-10-09', '0123456789', 'SEER911009J0', FALSE,  'Femenino', 10, 'Vespertino'),
(161, 5, 'Luis', 'Martínez', 'Hernández', '1988-01-30', '1234567890', 'MAHL880130K1', TRUE,  'Masculino', 11, 'Matutino'),
(162, 5, 'Margarita', 'González', 'Vega', '1993-08-13', '2345678901', 'GOVM930813L2', FALSE,  'Femenino', 12, 'Vespertino'),
(163, 5, 'Pedro', 'Rodríguez', 'Pérez', '1987-04-05', '3456789012', 'RODP870405M3', TRUE,  'Masculino', 13, 'Matutino'),
(164, 5, 'Paola', 'Serrano', 'González', '1991-06-17', '4567890123', 'SESG910617N4', FALSE,  'Femenino', 14, 'Vespertino'),
(165, 5, 'Ricardo', 'Martínez', 'Rodríguez', '1992-03-22', '5678901234', 'MARR920322O5', TRUE,  'Masculino', 15, 'Matutino'),
(166, 5, 'Ivonne', 'Hernández', 'González', '1990-12-29', '6789012345', 'HEGV901229P6', FALSE,  'Femenino', 16, 'Vespertino'),
(167, 5, 'José', 'González', 'Vega', '1988-10-10', '7890123456', 'GOVJ881010Q7', TRUE,  'Masculino', 17, 'Matutino'),
(168, 5, 'Claudia', 'Serrano', 'Rodríguez', '1986-02-02', '8901234567', 'SERC860202R8', FALSE, 'Femenino', 18, 'Vespertino'),
(169, 5, 'Javier', 'Martínez', 'González', '1993-05-12', '9012345678', 'MAGJ930512S9', TRUE,  'Masculino', 19, 'Matutino'),
(170, 5, 'Alma', 'Vega', 'Serrano', '1989-08-06', '0123456789', 'VESA890806T0', FALSE, 'Femenino', 20, 'Vespertino'),
(171, 5, 'Sergio', 'Rodríguez', 'Hernández', '1985-12-30', '1234567890', 'ROHS851230U1', TRUE,  'Masculino', 1, 'Matutino'),
(172, 5, 'Natalia', 'González', 'Pérez', '1990-02-18', '2345678901', 'GOPN900218V2', FALSE,  'Femenino', 2, 'Vespertino'),
(173, 5, 'Eduardo', 'Martínez', 'Vega', '1986-10-27', '3456789012', 'MAVE861027W3', TRUE,  'Masculino', 3, 'Matutino'),
(174, 5, 'María', 'Hernández', 'Rodríguez', '1993-01-09', '4567890123', 'HERM930109X4', FALSE,  'Femenino', 4, 'Vespertino'),
(175, 5, 'Ramiro', 'Pérez', 'Serrano', '1988-05-25', '5678901234', 'PERS880525Y5', TRUE,  'Masculino', 5, 'Matutino'),
(176, 5, 'Carmen', 'Vega', 'Rodríguez', '1990-07-21', '6789012345', 'VEGC900721Z6', FALSE,  'Femenino', 6, 'Vespertino'),
(177, 5, 'Luis', 'González', 'Serrano', '1991-03-16', '7890123456', 'GOLS910316A7', TRUE,  'Masculino', 7, 'Matutino'),
(178, 5, 'Ana', 'Martínez', 'Hernández', '1992-04-03', '8901234567', 'MAHA920403B8', FALSE,  'Femenino', 8, 'Vespertino'),
(179, 5, 'Ricardo', 'González', 'Rodríguez', '1989-06-12', '9012345678', 'GORG890612C9', TRUE,  'Masculino', 9, 'Matutino'),
(180, 5, 'Mónica', 'Vega', 'Serrano', '1987-11-08', '0123456789', 'VESM871108D0', FALSE,  'Femenino', 10, 'Vespertino'),
(181, 5, 'Mario', 'Martínez', 'Vega', '1990-03-21', '1234567890', 'MAVM900321E1', TRUE, 'Masculino', 11, 'Matutino'),
(182, 5, 'Verónica', 'González', 'Pérez', '1991-12-14', '2345678901', 'GOVP911214F2', FALSE,  'Femenino', 12, 'Vespertino'),
(183, 5, 'José', 'Serrano', 'Rodríguez', '1992-08-18', '3456789012', 'SERJ920818G3', TRUE,  'Masculino', 13, 'Matutino'),
(184, 5, 'Raquel', 'Martínez', 'González', '1988-11-04', '4567890123', 'MARG881104H4', FALSE, 'Femenino', 14, 'Vespertino'),
(185, 5, 'Eduardo', 'Vega', 'Serrano', '1985-07-17', '5678901234', 'VSEE850717I5', TRUE, 'Masculino', 15, 'Matutino'),
(186, 5, 'Ángela', 'González', 'Hernández', '1992-09-05', '6789012345', 'GOHA920905J6', FALSE, 'Femenino', 16, 'Vespertino'),
(187, 5, 'David', 'Rodríguez', 'Vega', '1986-05-11', '7890123456', 'RODV860511K7', TRUE,  'Masculino', 17, 'Matutino'),
(188, 5, 'Claudia', 'Serrano', 'Martínez', '1990-01-23', '8901234567', 'SECM900123L8', FALSE,  'Femenino', 18, 'Vespertino'),
(189, 5, 'Héctor', 'Vega', 'González', '1988-08-17', '9012345678', 'VEGH880817M9', TRUE,  'Masculino', 19, 'Matutino'),
(190, 5, 'Margarita', 'Rodríguez', 'Pérez', '1991-05-20', '0123456789', 'ROPM910520N0', FALSE,  'Femenino', 20, 'Vespertino'),
(191, 5, 'Raúl', 'Serrano', 'González', '1986-09-14', '1234567890', 'SERR860914O1', TRUE, 'Masculino', 1, 'Matutino'),
(192, 5, 'Carolina', 'Vega', 'Rodríguez', '1993-04-15', '2345678901', 'VERC930415P2', FALSE,  'Femenino', 2, 'Vespertino'),
(193, 5, 'Joaquín', 'Martínez', 'Hernández', '1990-06-19', '3456789012', 'MAHJ900619Q3', TRUE,  'Masculino', 3, 'Matutino'),
(194, 5, 'Sofía', 'González', 'Vega', '1987-02-22', '4567890123', 'GOVS870222R4', FALSE,  'Femenino', 4, 'Vespertino'),
(195, 5, 'Armando', 'Rodríguez', 'Martínez', '1991-09-03', '5678901234', 'ROMA910903S5', TRUE, 'Masculino', 5, 'Matutino'),
(196, 5, 'Laura', 'Serrano', 'González', '1988-03-04', '6789012345', 'SEGL880304T6', FALSE,  'Femenino', 6, 'Vespertino'),
(197, 5, 'Carlos', 'Vega', 'Rodríguez', '1985-04-18', '7890123456', 'VEGC850418U7', TRUE,  'Masculino', 7, 'Matutino'),
(198, 5, 'Mercedes', 'González', 'Serrano', '1993-12-28', '8901234567', 'GOMS931228V8', FALSE, 'Femenino', 8, 'Vespertino'),
(199, 5, 'Francisco', 'Martínez', 'Rodríguez', '1986-05-09', '9012345678', 'MARR860509W9', TRUE, 'Masculino', 9, 'Matutino'),
(200, 5, 'Margarita', 'Vega', 'Hernández', '1991-10-03', '0123456789', 'VEGM911003X0', FALSE,  'Femenino', 10, 'Vespertino'),
(201, 5, 'Eduardo', 'Rodríguez', 'Vega', '1989-09-14', '1234567890', 'ROVE890914Y1', TRUE, 'Masculino', 11, 'Matutino'),
(202, 5, 'Joaquín', 'Serrano', 'González', '1992-07-22', '2345678901', 'SESG920722Z2', FALSE,  'Masculino', 12, 'Vespertino'),
(203, 5, 'Lucía', 'Vega', 'Rodríguez', '1987-01-04', '3456789012', 'VERL870104A3', TRUE,  'Femenino', 13, 'Matutino'),
(204, 5, 'Javier', 'Martínez', 'Serrano', '1990-11-06', '4567890123', 'MASJ901106B4', FALSE,  'Masculino', 14, 'Vespertino'),
(205, 5, 'Esteban', 'González', 'Vega', '1985-08-14', '5678901234', 'GOEE850814C5', TRUE,  'Masculino', 15, 'Matutino'),
(206, 5, 'Beatriz', 'Serrano', 'Rodríguez', '1989-04-09', '6789012345', 'SERB890409D6', FALSE,  'Femenino', 16, 'Vespertino'),
(207, 5, 'Salvador', 'Martínez', 'Vega', '1993-11-23', '7890123456', 'MAVS931123E7', TRUE,  'Masculino', 17, 'Matutino'),
(208, 5, 'Isabel', 'González', 'Hernández', '1986-12-19', '8901234567', 'GOHI861219F8', FALSE,  'Femenino', 18, 'Vespertino'),
(209, 5, 'Antonio', 'Vega', 'Rodríguez', '1992-01-17', '9012345678', 'VERA920117G9', TRUE,  'Masculino', 19, 'Matutino'),
(210, 5, 'Carolina', 'Serrano', 'Vega', '1989-05-22', '0123456789', 'SEVC890522H0', FALSE, 'Femenino', 20, 'Vespertino'),
(211, 6, 'Pedro', 'Martínez', 'López', '1990-01-12', '1234567890', 'MALP900112A1', TRUE,  'Masculino', 1, 'Matutino'),
(212, 6, 'Raquel', 'González', 'Martínez', '1989-06-23', '2345678901', 'GOMR890623B2', FALSE,  'Femenino', 2, 'Vespertino'),
(213, 6, 'Carlos', 'Rodríguez', 'Hernández', '1987-11-05', '3456789012', 'ROHC871105C3', TRUE, 'Masculino', 3, 'Matutino'),
(214, 6, 'Laura', 'Serrano', 'Pérez', '1993-02-07', '4567890123', 'SELP930207D4', FALSE,  'Femenino', 4, 'Vespertino'),
(215, 6, 'Luis', 'Martínez', 'Vega', '1988-10-30', '5678901234', 'MAVM881030E5', TRUE,  'Masculino', 5, 'Matutino'),
(216, 6, 'Ana', 'González', 'Rodríguez', '1990-03-17', '6789012345', 'GORA900317F6', FALSE,  'Femenino', 6, 'Vespertino'),
(217, 6, 'José', 'Vega', 'Hernández', '1992-05-23', '7890123456', 'VEHJ920523G7', TRUE, 'Masculino', 7, 'Matutino'),
(218, 6, 'Verónica', 'Rodríguez', 'Pérez', '1991-09-14', '8901234567', 'ROVP910914H8', FALSE,  'Femenino', 8, 'Vespertino'),
(219, 6, 'Ricardo', 'Serrano', 'González', '1989-07-10', '9012345678', 'SERR890710I9', TRUE,  'Masculino', 9, 'Matutino'),
(220, 6, 'Margarita', 'Martínez', 'Vega', '1986-12-02', '0123456789', 'MAVM861202J0', FALSE,  'Femenino', 10, 'Vespertino'),
(221, 6, 'Pedro', 'Rodríguez', 'Serrano', '1993-11-25', '1234567890', 'ROPS931125K1', TRUE,  'Masculino', 11, 'Matutino'),
(222, 6, 'Isabel', 'Vega', 'González', '1991-04-18', '2345678901', 'VEGI910418L2', FALSE,  'Femenino', 12, 'Vespertino'),
(223, 6, 'David', 'González', 'Hernández', '1987-08-01', '3456789012', 'GOHD870801M3', TRUE,  'Masculino', 13, 'Matutino'),
(224, 6, 'Cristina', 'Serrano', 'Pérez', '1985-05-25', '4567890123', 'SECP850525N4', FALSE,  'Femenino', 14, 'Vespertino'),
(225, 6, 'Ricardo', 'Martínez', 'Rodríguez', '1992-01-07', '5678901234', 'MARR920107O5', TRUE,  'Masculino', 15, 'Matutino'),
(226, 6, 'Laura', 'González', 'Vega', '1991-03-12', '6789012345', 'GOVL910312P6', FALSE, 'Femenino', 16, 'Vespertino'),
(227, 6, 'Raúl', 'Rodríguez', 'Martínez', '1990-02-22', '7890123456', 'RORM900222Q7', TRUE,  'Masculino', 17, 'Matutino'),
(228, 6, 'Patricia', 'Vega', 'González', '1993-10-10', '8901234567', 'VEGP931010R8', FALSE,  'Femenino', 18, 'Vespertino'),
(229, 6, 'Javier', 'Serrano', 'Rodríguez', '1987-12-15', '9012345678', 'SERR871215S9', TRUE,  'Masculino', 19, 'Matutino'),
(230, 6, 'Claudia', 'Martínez', 'Vega', '1986-04-20', '0123456789', 'MAVC860420T0', FALSE,  'Femenino', 20, 'Vespertino'),
(231, 6, 'Víctor', 'Rodríguez', 'González', '1991-07-06', '1234567890', 'ROGV910706U1', TRUE,  'Masculino', 1, 'Matutino'),
(232, 6, 'Esteban', 'Vega', 'Serrano', '1990-09-18', '2345678901', 'VESE900918V2', FALSE, 'Masculino', 2, 'Vespertino'),
(233, 6, 'Mónica', 'Serrano', 'González', '1989-11-30', '3456789012', 'SESM891130W3', TRUE,  'Femenino', 3, 'Matutino'),
(234, 6, 'Luis', 'González', 'Pérez', '1988-03-03', '4567890123', 'GOLP880303X4', FALSE,  'Masculino', 4, 'Vespertino'),
(235, 6, 'Juliana', 'Rodríguez', 'Vega', '1993-04-01', '5678901234', 'ROVJ930401Y5', TRUE, 'Femenino', 5, 'Matutino'),
(236, 6, 'Fernando', 'Serrano', 'Hernández', '1987-05-19', '6789012345', 'SEHF870519Z6', FALSE,  'Masculino', 6, 'Vespertino'),
(237, 6, 'Carolina', 'Martínez', 'Rodríguez', '1991-08-09', '7890123456', 'MARC910809A7', TRUE,  'Femenino', 7, 'Matutino'),
(238, 6, 'Ricardo', 'Vega', 'Serrano', '1989-09-01', '8901234567', 'VESR890901B8', FALSE,  'Masculino', 8, 'Vespertino'),
(239, 6, 'Fernando', 'González', 'Vega', '1990-12-10', '9012345678', 'VEGF901210C9', TRUE,  'Masculino', 9, 'Matutino'),
(240, 6, 'Raquel', 'Serrano', 'Martínez', '1987-10-21', '0123456789', 'SERM871021D0', FALSE,  'Femenino', 10, 'Vespertino'),
(241, 6, 'Luis', 'Vega', 'Hernández', '1988-06-15', '1234567890', 'VEHL880615E1', TRUE,  'Masculino', 11, 'Matutino'),
(242, 6, 'Paola', 'Rodríguez', 'Vega', '1993-12-03', '2345678901', 'ROVP931203F2', FALSE,  'Femenino', 12, 'Vespertino'),
(243, 6, 'Jorge', 'Martínez', 'González', '1989-01-10', '3456789012', 'MAGJ890110G3', TRUE,  'Masculino', 13, 'Matutino'),
(244, 6, 'Sandra', 'González', 'Rodríguez', '1990-08-12', '4567890123', 'GORS900812H4', FALSE,  'Femenino', 14, 'Vespertino'),
(245, 6, 'Ricardo', 'Vega', 'Rodríguez', '1985-11-07', '5678901234', 'VERR851107I5', TRUE,  'Masculino', 15, 'Matutino'),
(246, 6, 'Lucía', 'Rodríguez', 'Serrano', '1991-02-21', '6789012345', 'ROSL910221J6', FALSE,  'Femenino', 16, 'Vespertino'),
(247, 6, 'José', 'Serrano', 'Martínez', '1993-05-16', '7890123456', 'SEJM930516K7', TRUE,  'Masculino', 17, 'Matutino'),
(248, 6, 'Beatriz', 'Vega', 'González', '1987-12-02', '8901234567', 'VEGB871202L8', FALSE, 'Femenino', 18, 'Vespertino'),
(249, 6, 'Antonio', 'Rodríguez', 'Hernández', '1990-07-15', '9012345678', 'ROHA900715M9', TRUE,  'Masculino', 19, 'Matutino'),
(250, 6, 'Natalia', 'Martínez', 'Vega', '1986-09-21', '0123456789', 'MAVN860921N0', FALSE,  'Femenino', 20, 'Vespertino'),
(251, 7, 'Miguel', 'Pérez', 'González', '1992-05-10', '1234567890', 'PEGM920510A1', TRUE,  'Masculino', 1, 'Matutino'),
(252, 7, 'Adriana', 'Martínez', 'Serrano', '1990-08-25', '2345678901', 'MASA900825B2', FALSE,  'Femenino', 2, 'Vespertino'),
(253, 7, 'Luis', 'González', 'Vega', '1988-04-13', '3456789012', 'GOVL880413C3', TRUE,  'Masculino', 3, 'Matutino'),
(254, 7, 'Carmen', 'Rodríguez', 'Martínez', '1991-07-09', '4567890123', 'ROCM910709D4', FALSE,  'Femenino', 4, 'Vespertino'),
(255, 7, 'José', 'Serrano', 'Vega', '1989-11-02', '5678901234', 'SEVJ891102E5', TRUE, 'Masculino',13, 'Matutino'),
(256, 7, 'Patricia', 'Martínez', 'González', '1993-09-21', '6789012345', 'MAGP930921F6', FALSE,  'Femenino', 6, 'Vespertino'),
(257, 7, 'Fernando', 'González', 'Vega', '1987-06-14', '7890123456', 'GOVF870614G7', TRUE,  'Masculino', 7, 'Matutino'),
(258, 7, 'Raquel', 'Rodríguez', 'Serrano', '1992-03-17', '8901234567', 'ROSR920317H8', FALSE,  'Femenino', 8, 'Vespertino'),
(259, 7, 'Víctor', 'Martínez', 'Vega', '1986-12-25', '9012345678', 'MAVV861225I9', TRUE,  'Masculino', 9, 'Matutino'),
(260, 7, 'Mónica', 'Serrano', 'González', '1990-02-10', '0123456789', 'SEMG900210J0', FALSE,  'Femenino', 10, 'Vespertino'),
(261, 7, 'Raúl', 'Rodríguez', 'Vega', '1993-10-05', '1234567890', 'ROVR931005K1', TRUE,  'Masculino', 11, 'Matutino'),
(262, 7, 'Luz', 'González', 'Serrano', '1988-05-30', '2345678901', 'GOLS880530L2', FALSE,  'Femenino', 12, 'Vespertino'),
(263, 7, 'Roberto', 'Martínez', 'Vega', '1992-11-22', '3456789012', 'MAVR921122M3', TRUE,  'Masculino', 13, 'Matutino'),
(264, 7, 'Silvia', 'Serrano', 'Rodríguez', '1990-06-08', '4567890123', 'SESR900608N4', FALSE,  'Femenino', 14, 'Vespertino'),
(265, 7, 'Pedro', 'Rodríguez', 'González', '1989-01-14', '5678901234', 'ROGP890114O5', TRUE,  'Masculino', 15, 'Matutino'),
(266, 7, 'Alejandra', 'Martínez', 'Rodríguez', '1993-04-07', '6789012345', 'MARL930407P6', FALSE,  'Femenino', 16, 'Vespertino'),
(267, 7, 'Héctor', 'González', 'Serrano', '1992-07-22', '7890123456', 'GOGH920722Q7', TRUE, 'Masculino', 17, 'Matutino'),
(268, 7, 'Daniela', 'Rodríguez', 'Vega', '1987-09-17', '8901234567', 'ROVD870917R8', FALSE,  'Femenino', 18, 'Vespertino'),
(269, 7, 'Luis', 'Martínez', 'González', '1991-03-01', '9012345678', 'MALG910301S9', TRUE,  'Masculino', 19, 'Matutino'),
(270, 7, 'Gabriela', 'Serrano', 'Rodríguez', '1990-08-17', '0123456789', 'SEGR900817T0', FALSE,  'Femenino', 20, 'Vespertino'),
(271, 7, 'José', 'González', 'Vega', '1989-10-30', '1234567890', 'GOVJ891030U1', TRUE, 'Masculino', 1, 'Matutino'),
(272, 7, 'Claudia', 'Rodríguez', 'Martínez', '1992-12-09', '2345678901', 'ROCM921209V2', FALSE,  'Femenino', 2, 'Vespertino'),
(273, 7, 'Ricardo', 'Martínez', 'Serrano', '1987-04-21', '3456789012', 'MARS870421W3', TRUE,  'Masculino', 3, 'Matutino'),
(274, 7, 'Patricia', 'Vega', 'Rodríguez', '1988-02-02', '4567890123', 'VEPR880202X4', FALSE,  'Femenino', 4, 'Vespertino'),
(275, 7, 'Esteban', 'González', 'Serrano', '1993-01-15', '5678901234', 'GOGS930115Y5', TRUE,  'Masculino', 5, 'Matutino'),
(276, 7, 'Marcela', 'Rodríguez', 'Vega', '1989-05-30', '6789012345', 'ROVM890530Z6', FALSE,  'Femenino', 6, 'Vespertino'),
(277, 7, 'Roberto', 'Serrano', 'Martínez', '1992-03-22', '7890123456', 'SERM920322A7', TRUE,  'Masculino', 7, 'Matutino'),
(278, 7, 'José', 'Martínez', 'Rodríguez', '1991-04-16', '8901234567', 'MAMR910416B8', FALSE,  'Masculino', 8, 'Vespertino'),
(279, 7, 'Cristina', 'González', 'Vega', '1988-09-25', '9012345678', 'GOCV880925C9', TRUE,  'Femenino', 9, 'Matutino'),
(280, 7, 'Carlos', 'Rodríguez', 'Serrano', '1993-02-18', '0123456789', 'ROCS930218D0', FALSE,  'Masculino', 10, 'Vespertino'),
(281, 7, 'Erika', 'Serrano', 'Rodríguez', '1990-07-25', '1234567890', 'SERR900725E1', TRUE,  'Femenino', 11, 'Matutino'),
(282, 7, 'David', 'Martínez', 'González', '1992-11-05', '2345678901', 'MAGD921105F2', FALSE,  'Masculino', 12, 'Vespertino'),
(283, 7, 'Ángel', 'González', 'Vega', '1987-05-30', '3456789012', 'GOGV870530G3', TRUE,  'Masculino', 13, 'Matutino'),
(284, 7, 'Clara', 'Rodríguez', 'Serrano', '1990-11-14', '4567890123', 'ROCS901114H4', FALSE,  'Femenino', 14, 'Vespertino'),
(285, 7, 'Emilio', 'Martínez', 'Vega', '1988-08-05', '5678901234', 'MAVE880805I5', TRUE,  'Masculino', 15, 'Matutino'),
(286, 8, 'José', 'Hernández', 'López', '1990-12-15', '6789012345', 'HEJL901215A1', TRUE,  'Masculino', 1, 'Matutino'),
(287, 8, 'María', 'Gómez', 'Sánchez', '1988-05-05', '7890123456', 'GOSM880505B2', FALSE,  'Femenino', 2, 'Vespertino'),
(288, 8, 'Juan', 'Ramírez', 'Martínez', '1993-01-22', '8901234567', 'RAMJ930122C3', TRUE,  'Masculino', 3, 'Matutino'),
(289, 8, 'Patricia', 'Torres', 'Jiménez', '1987-03-14', '9012345678', 'TOJP870314D4', FALSE,  'Femenino', 4, 'Vespertino'),
(290, 8, 'Carlos', 'Vázquez', 'López', '1991-06-18', '0123456789', 'VALC910618E5', TRUE,  'Masculino', 5, 'Matutino'),
(291, 8, 'Lucía', 'Sánchez', 'Rodríguez', '1989-07-03', '1234567890', 'SARN890703F6', FALSE,  'Femenino', 6, 'Vespertino'),
(292, 8, 'Eduardo', 'Hernández', 'González', '1992-09-11', '2345678901', 'HEGE920911G7', TRUE, 'Masculino', 7, 'Matutino'),
(293, 8, 'María', 'Martínez', 'Serrano', '1988-11-30', '3456789012', 'MAMS881130H8', FALSE,  'Femenino', 8, 'Vespertino'),
(294, 8, 'Raúl', 'González', 'Vega', '1991-10-07', '4567890123', 'GOVR911007I9', TRUE,  'Masculino', 9, 'Matutino'),
(295, 8, 'Esther', 'Pérez', 'Sánchez', '1987-04-12', '5678901234', 'PESA870412J0', FALSE,  'Femenino', 10, 'Vespertino'),
(296, 8, 'Javier', 'López', 'González', '1993-02-02', '6789012345', 'LOPJ930202K1', TRUE,  'Masculino', 11, 'Matutino'),
(297, 8, 'Adriana', 'Vega', 'Martínez', '1990-05-25', '7890123456', 'VEMI900525L2', FALSE,  'Femenino', 12, 'Vespertino'),
(298, 8, 'Ricardo', 'Gómez', 'Serrano', '1986-09-13', '8901234567', 'GOSR860913M3', TRUE,  'Masculino', 13, 'Matutino'),
(299, 8, 'Margarita', 'Hernández', 'Torres', '1992-06-30', '9012345678', 'HETO920630N4', FALSE,  'Femenino', 14, 'Vespertino'),
(300, 8, 'Tomás', 'Ramírez', 'González', '1989-08-19', '0123456789', 'RAMT890819O5', TRUE,  'Masculino', 15, 'Matutino'),
(301, 8, 'Verónica', 'Jiménez', 'Sánchez', '1990-10-22', '1234567890', 'JISV901022P6', FALSE,  'Femenino', 16, 'Vespertino'),
(302, 8, 'Luis', 'Torres', 'Pérez', '1987-02-05', '2345678901', 'TOLU870205Q7', TRUE,  'Masculino', 17, 'Matutino'),
(303, 8, 'Sofía', 'Vázquez', 'Rodríguez', '1993-03-14', '3456789012', 'VASR930314R8', FALSE,  'Femenino', 18, 'Vespertino'),
(304, 8, 'Gabriel', 'Sánchez', 'Torres', '1991-11-06', '4567890123', 'SANT911106S9', TRUE,  'Masculino', 19, 'Matutino'),
(305, 8, 'Raquel', 'López', 'Ramírez', '1986-01-29', '5678901234', 'LOLR860129T0', FALSE,  'Femenino', 20, 'Vespertino'),
(306, 8, 'Ricardo', 'Hernández', 'Sánchez', '1989-12-04', '6789012345', 'HERS891204U1', TRUE,  'Masculino', 1, 'Matutino'),
(307, 8, 'Laura', 'González', 'Rodríguez', '1990-03-27', '7890123456', 'GONL900327V2', FALSE,  'Femenino', 2, 'Vespertino'),
(308, 8, 'Fernando', 'Vega', 'Martínez', '1992-04-17', '8901234567', 'VEFM920417W3', TRUE, 'Masculino', 3, 'Matutino'),
(309, 8, 'Carmen', 'Gómez', 'Serrano', '1993-08-23', '9012345678', 'GOSC930823X4', FALSE, 'Femenino', 4, 'Vespertino'),
(310, 8, 'Enrique', 'López', 'González', '1987-07-01', '0123456789', 'LOPE870701Y5', TRUE,  'Masculino', 5, 'Matutino'),
(311, 8, 'Beatriz', 'Martínez', 'Vega', '1989-10-30', '1234567890', 'MAVB891030Z6', FALSE,  'Femenino', 6, 'Vespertino'),
(312, 8, 'Santiago', 'Vázquez', 'Torres', '1990-01-12', '2345678901', 'VATS900112A7', TRUE, 'Masculino', 7, 'Matutino'),
(313, 8, 'Rocío', 'González', 'Serrano', '1992-05-24', '3456789012', 'GOSR920524B8', FALSE,  'Femenino', 8, 'Vespertino'),
(314, 8, 'Juan', 'Vega', 'González', '1986-11-15', '4567890123', 'VEGJ861115C9', TRUE,  'Masculino', 9, 'Matutino'),
(315, 8, 'Renata', 'Martínez', 'Ramírez', '1993-06-28', '5678901234', 'MARR930628D0', FALSE,  'Femenino', 10, 'Vespertino'),
(316, 8, 'José', 'Vega', 'González', '1987-10-09', '6789012345', 'VEGJ871009E1', TRUE,  'Masculino', 11, 'Matutino'),
(317, 8, 'Lorena', 'Ramírez', 'Gómez', '1990-08-03', '7890123456', 'RAGL900803F2', FALSE,  'Femenino', 12, 'Vespertino'),
(318, 8, 'Gerardo', 'González', 'Vega', '1989-05-20', '8901234567', 'GOGG890520G3', TRUE,  'Masculino', 13, 'Matutino'),
(319, 8, 'Marina', 'López', 'Sánchez', '1992-07-13', '9012345678', 'LOPM920713H4', FALSE,  'Femenino', 14, 'Vespertino'),
(320, 8, 'Marco', 'Vega', 'Martínez', '1993-09-16', '0123456789', 'VEMM930916I5', TRUE,  'Masculino', 15, 'Matutino'),
(321, 8, 'Carlos', 'Pérez', 'López', '1987-12-10', '2345678901', 'PELJ871210J6', TRUE,  'Masculino', 16, 'Vespertino'),
(322, 8, 'Andrea', 'Ramírez', 'Vega', '1991-05-21', '3456789012', 'RAVS910521K7', FALSE, 'Femenino', 17, 'Matutino'),
(323, 8, 'Antonio', 'Vega', 'Rodríguez', '1992-09-01', '4567890123', 'VEAR920901L8', TRUE,  'Masculino', 18, 'Vespertino'),
(324, 8, 'Marcela', 'Hernández', 'Serrano', '1989-02-16', '5678901234', 'HESM890216M9', FALSE, 'Femenino', 19, 'Matutino'),
(325, 8, 'Fernando', 'López', 'Pérez', '1991-10-05', '6789012345', 'LOPF911005N0', TRUE,  'Masculino', 20, 'Vespertino'),
(326, 8, 'Lorena', 'Martínez', 'González', '1986-12-29', '7890123456', 'MAGL861229O1', FALSE,  'Femenino', 1, 'Matutino'),
(327, 8, 'Patricio', 'Gómez', 'Vega', '1992-07-20', '8901234567', 'GOVP920720P2', TRUE,  'Masculino', 2, 'Vespertino'),
(328, 8, 'Claudia', 'López', 'Torres', '1989-09-08', '9012345678', 'LOTC890908Q3', FALSE,  'Femenino', 3, 'Matutino'),
(329, 8, 'Raúl', 'Ramírez', 'Sánchez', '1990-01-03', '0123456789', 'RARS900103R4', TRUE, 'Masculino', 4, 'Vespertino'),
(330, 8, 'Ángel', 'Vega', 'González', '1993-11-11', '1234567890', 'VEGA931111S5', TRUE,  'Masculino', 5, 'Matutino'),
(331, 8, 'Natalia', 'Sánchez', 'Vega', '1991-12-22', '2345678901', 'SAVN911222T6', FALSE, 'Femenino', 6, 'Vespertino'),
(332, 8, 'Eduardo', 'López', 'Martínez', '1987-08-29', '3456789012', 'LOPE870829U7', TRUE,  'Masculino', 7, 'Matutino'),
(333, 8, 'Cynthia', 'González', 'Torres', '1992-02-10', '4567890123', 'GONC920210V8', FALSE,  'Femenino', 8, 'Vespertino'),
(334, 8, 'Gabriel', 'Martínez', 'Vega', '1986-07-18', '5678901234', 'MAVG860718W9', TRUE,  'Masculino', 9, 'Matutino'),
(335, 8, 'Daniela', 'Ramírez', 'González', '1990-04-22', '6789012345', 'RAGD900422X0', FALSE,  'Femenino', 10, 'Vespertino'),
(336, 8, 'Octavio', 'Vega', 'López', '1992-03-09', '7890123456', 'VEGO920309Y1', TRUE,  'Masculino', 11, 'Matutino'),
(337, 8, 'Silvia', 'Serrano', 'González', '1989-10-02', '8901234567', 'SESY891002Z2', FALSE,  'Femenino', 12, 'Vespertino'),
(338, 8, 'Manuel', 'Gómez', 'Vega', '1987-06-17', '9012345678', 'GOVM870617A3', TRUE,  'Masculino', 13, 'Matutino'),
(339, 8, 'Susana', 'Ramírez', 'López', '1993-04-24', '0123456789', 'RALR930424B4', FALSE, 'Femenino', 14, 'Vespertino'),
(340, 8, 'Ricardo', 'Sánchez', 'González', '1990-06-15', '1234567890', 'SARG900615C5', TRUE,  'Masculino', 15, 'Matutino'),
(341, 9, 'Lucía', 'Pérez', 'González', '1991-01-11', '2345678901', 'PEGL910111D9', TRUE,  'Femenino', 1, 'Matutino'),
(342, 9, 'José', 'Martínez', 'Ramírez', '1989-08-21', '3456789012', 'MARJ890821A2', FALSE,  'Masculino', 2, 'Vespertino'),
(343, 9, 'Sandra', 'López', 'Torres', '1990-11-15', '4567890123', 'LOPS901115B3', TRUE, 'Femenino', 3, 'Matutino'),
(344, 9, 'David', 'González', 'Vega', '1987-05-09', '5678901234', 'GONV870509C4', FALSE,  'Masculino', 4, 'Vespertino'),
(345, 9, 'Paula', 'Ramírez', 'Serrano', '1992-06-30', '6789012345', 'RAPS920630D5', TRUE,  'Femenino', 5, 'Matutino'),
(346, 9, 'Raúl', 'Hernández', 'Sánchez', '1986-03-17', '7890123456', 'HERS860317E6', FALSE,  'Masculino', 6, 'Vespertino'),
(347, 9, 'Elena', 'Sánchez', 'González', '1993-04-04', '8901234567', 'SAGE930404F7', TRUE,  'Femenino', 7, 'Matutino'),
(348, 9, 'Miguel', 'Gómez', 'Pérez', '1989-02-19', '9012345678', 'GOMP890219G8', FALSE , 'Masculino', 8, 'Vespertino'),
(349, 9, 'Patricia', 'Vega', 'López', '1991-09-12', '0123456789', 'VELP910912H9', TRUE,  'Femenino', 9, 'Matutino'),
(350, 9, 'Javier', 'Martínez', 'González', '1987-12-04', '1234567890', 'MARG871204I0', FALSE,'Masculino', 10, 'Vespertino'),
(351, 9, 'Laura', 'Hernández', 'Vega', '1992-05-08', '2345678901', 'HELV920508J1', TRUE,  'Femenino', 11, 'Matutino'),
(352, 9, 'Fernando', 'González', 'Ramírez', '1989-11-22', '3456789012', 'GONF891122K2', FALSE,  'Masculino', 12, 'Vespertino'),
(353, 9, 'Teresa', 'Serrano', 'Gómez', '1990-01-07', '4567890123', 'SERG900107L3', TRUE,  'Femenino', 13, 'Matutino'),
(354, 9, 'Carlos', 'Vega', 'Torres', '1988-07-15', '5678901234', 'VEGC880715M4', FALSE,  'Masculino', 14, 'Vespertino'),
(355, 9, 'Carmen', 'Pérez', 'Sánchez', '1993-03-26', '6789012345', 'PESC930326N5', TRUE,  'Femenino', 15, 'Matutino'),
(356, 9, 'Luis', 'Ramírez', 'López', '1991-04-29', '7890123456', 'RALR910429O6', FALSE,  'Masculino', 16, 'Vespertino'),
(357, 9, 'Margarita', 'González', 'Vega', '1989-10-10', '8901234567', 'GONM891010P7', TRUE,  'Femenino', 17, 'Matutino'),
(358, 9, 'Eduardo', 'Martínez', 'Serrano', '1992-12-14', '9012345678', 'MASE921214Q8', FALSE,  'Masculino', 18, 'Vespertino'),
(359, 9, 'Adriana', 'Sánchez', 'Hernández', '1990-06-05', '0123456789', 'SASH900605R9', TRUE,  'Femenino', 19, 'Matutino'),
(360, 9, 'Ricardo', 'Vega', 'Martínez', '1991-10-30', '1234567890', 'VEGR911030S0', FALSE, 'Femenino', 1, 'Matutino'),
(361, 10, 'Pedro', 'Ramírez', 'López', '1988-11-17', '3456789012', 'RAMP881117B2', FALSE,  'Masculino', 2, 'Vespertino'),
(362, 10, 'Carla', 'Sánchez', 'Vega', '1992-02-10', '4567890123', 'SACV920210C3', TRUE,  'Femenino', 3, 'Matutino'),
(363, 10, 'Julio', 'Pérez', 'Hernández', '1987-08-05', '5678901234', 'PEHJ870805D4', FALSE,  'Masculino', 4, 'Vespertino'),
(364, 10, 'Verónica', 'Martínez', 'González', '1990-03-22', '6789012345', 'MAVG900322E5', TRUE, 'Femenino', 5, 'Matutino'),
(365, 10, 'José', 'Vega', 'Serrano', '1991-01-15', '7890123456', 'VEJS910115F6', FALSE, 'Masculino', 6, 'Vespertino'),
(366, 10, 'Sofía', 'López', 'Pérez', '1993-07-09', '8901234567', 'LOPS930709G7', TRUE, 'Femenino', 7, 'Matutino'),
(367, 10, 'Andrés', 'González', 'Ramírez', '1989-04-14', '9012345678', 'GORA890414H8', FALSE,  'Masculino', 8, 'Vespertino'),
(368, 10, 'Teresa', 'Martínez', 'Hernández', '1992-09-03', '0123456789', 'MATH920903I9', TRUE,  'Femenino', 9, 'Matutino'),
(369, 10, 'Ricardo', 'Sánchez', 'Vega', '1988-12-25', '1234567890', 'SAVR881225J0', FALSE,  'Masculino', 10, 'Vespertino'),
(370, 10, 'Nuria', 'Pérez', 'Gómez', '1993-10-14', '2345678901', 'PEGN931014K1', TRUE,  'Femenino', 11, 'Matutino'),
(371, 10, 'Fernando', 'López', 'Ramírez', '1991-06-28', '3456789012', 'LORF910628L2', FALSE,  'Masculino', 12, 'Vespertino'),
(372, 10, 'Beatriz', 'Vega', 'Martínez', '1990-08-02', '4567890123', 'VEGB900802M3', TRUE, 'Femenino', 13, 'Matutino'),
(373, 10, 'Héctor', 'González', 'López', '1987-02-17', '5678901234', 'GOLH870217N4', FALSE,  'Masculino', 14, 'Vespertino'),
(374, 10, 'Lucia', 'Ramírez', 'Torres', '1991-12-19', '6789062345', 'RAMP912119O5', TRUE,  'Femenino', 12, 'Matutino'),
(375, 10, 'Patricia', 'Ramírez', 'Sánchez', '1991-11-19', '6789012345', 'RAMP911119O5', TRUE,  'Femenino', 15, 'Matutino');



-- -----------------------------------------------------
-- Tabla Ecosistema 
-- -----------------------------------------------------
CREATE TABLE Ecosistema (
    ID_Ecosistema INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60),
    Cupo INT
) ENGINE=InnoDB;
INSERT INTO `Ecosistema` (`ID_Ecosistema`, `Nombre`, `Cupo`) VALUES
(1, 'Selva Tropical', 30),
(2, 'Desierto', 20),
(3, 'Bosque Templado', 25),
(4, 'Sabana', 15),
(5, 'Zonas Húmedas', 20),
(6, 'Acuático', 35),
(7, 'Bosque Boreal', 18),
(8, 'Pradera', 25),
(9, 'Islas Tropicales', 15),
(10, 'Ártico', 10),
(11, 'Montañas', 20),
(12, 'Estuario', 12),
(13, 'Arrecife de Coral', 25),
(14, 'Río', 18),
(15, 'Pantano', 10),
(16, 'Tundra', 12),
(17, 'Bosque Nublado', 22),
(18, 'Cueva', 8),
(19, 'Marino', 30),
(20, 'Llanura', 18);

-- -----------------------------------------------------
-- Tabla Especie
-- -----------------------------------------------------
CREATE TABLE Especie (
    ID_Especie INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_generico VARCHAR(30),
    Nombre_cientifico VARCHAR(30) NOT NULL,
    Familia VARCHAR(20),
    ID_Ecosistema INT,
    Cuidados TEXT,
    Informacion TEXT,
    Estado_conservacion VARCHAR(30),
    FOREIGN KEY (ID_Ecosistema) REFERENCES Ecosistema(ID_Ecosistema) ON DELETE CASCADE
) ENGINE=InnoDB;
CREATE INDEX idx_id_ecosistema ON Especie(ID_Ecosistema);

INSERT INTO `Especie` (`ID_Especie`, `Nombre_generico`, `Nombre_cientifico`, `Familia`, `ID_Ecosistema`, `Cuidados`, `Informacion`, `Estado_conservacion`) VALUES
(1, 'Jaguar', 'Panthera onca', 'Felidae', 1, 'Requiere un espacio amplio para moverse y cazar, con un hábitat adecuado para descansar.', 'El jaguar es el tercer felino más grande del mundo, es conocido por su fuerza y agilidad.', 'Vulnerable'),
(2, 'Gorila', 'Gorilla gorilla', 'Hominidae', 1, 'Se debe proporcionar una dieta rica en frutas y vegetales, así como espacios con vegetación densa.', 'Los gorilas son animales muy sociales, viviendo en grupos liderados por un macho dominante.', 'En peligro de extinción'),
(3, 'Caimán', 'Crocodylus acutus', 'Crocodylidae', 5, 'Necesita un ambiente húmedo con agua para nadar y reposar.', 'Habita en zonas tropicales y subtropicales, y es conocido por su agresividad cuando se siente amenazado.', 'Preocupación menor'),
(4, 'Peces Tropicales', 'Carassius auratus', 'Cyprinidae', 19, 'Requiere acuarios con agua a temperatura constante y enriquecida con plantas acuáticas.', 'Son peces de agua dulce que viven en ecosistemas tropicales, conocidos por su colorido.', 'Preocupación menor'),
(5, 'León', 'Panthera leo', 'Felidae', 4, 'Los leones requieren áreas grandes de césped o sabanas para cazar y descansar.', 'El león es conocido como el "rey de la selva", un animal social que vive en manadas.', 'Vulnerable'),
(6, 'Jirafa', 'Giraffa camelopardalis', 'Giraffidae', 4, 'Necesita áreas abiertas con árboles para alimentarse de sus hojas.', 'Las jirafas son los animales terrestres más altos y tienen una lengua larga para comer de los árboles.', 'Preocupación menor'),
(7, 'Cebra', 'Equus quagga', 'Equidae', 4, 'Las cebras requieren pastizales abiertos y acceso a agua.', 'Las cebras son conocidas por sus rayas blancas y negras, y viven en grandes manadas.', 'Preocupación menor'),
(8, 'Águila Real', 'Aquila chrysaetos', 'Accipitridae', 1, 'Se debe proporcionar grandes áreas abiertas para volar y zonas de descanso en las rocas.', 'Es una de las aves rapaces más grandes, conocida por su vista aguda y su capacidad para cazar presas grandes.', 'Preocupación menor'),
(9, 'Delfín', 'Delphinus delphis', 'Delphinidae', 19, 'Necesita grandes espacios acuáticos para nadar y realizar actividades de socialización.', 'El delfín es un mamífero marino conocido por su inteligencia y habilidad para interactuar con los humanos.', 'Preocupación menor'),
(10, 'Tiburón Blanco', 'Carcharodon carcharias', 'Lamnidae', 19, 'Requiere vastos espacios marinos para nadar y cazar.', 'Es uno de los tiburones más grandes, conocido por su fuerza y su capacidad para detectar presas.', 'Vulnerable'),
(11, 'Panda', 'Ailuropoda melanoleuca', 'Ursidae', 1, 'Los pandas requieren áreas de bambú y zonas frescas para vivir.', 'El panda es conocido por su dieta a base de bambú y su aspecto adorable, pero está en peligro debido a la pérdida de hábitat.', 'En peligro de extinción'),
(12, 'Flamenco', 'Phoenicopterus roseus', 'Phoenicopteridae', 5, 'Necesita grandes cuerpos de agua y áreas pantanosas donde pueda buscar comida.', 'Los flamencos son aves migratorias conocidas por sus patas largas y su plumaje rosa brillante.', 'Preocupación menor'),
(13, 'Mono Araña', 'Ateles geoffroyi', 'Atelidae', 1, 'Requiere espacios arbóreos para trepar y alimentarse de frutas.', 'Este mono es conocido por su agilidad y su cola prensil, que le permite moverse por los árboles.', 'En peligro'),
(14, 'Zorro Ártico', 'Vulpes lagopus', 'Canidae', 10, 'Debe contar con áreas frías y con zonas rocosas o nevadas para refugiarse.', 'El zorro ártico está adaptado a las duras condiciones del Ártico y es conocido por su pelaje blanco.', 'Preocupación menor'),
(15, 'Pingüino de Humboldt', 'Spheniscus humboldti', 'Spheniscidae', 10, 'Necesita espacios fríos y agua salada para nadar y pescar.', 'El pingüino de Humboldt es originario de las costas de Chile y Perú y es conocido por su capacidad para nadar largas distancias.', 'Vulnerable'),
(16, 'Canguro', 'Macropus rufus', 'Macropodidae', 4, 'Necesita grandes praderas y zonas abiertas para saltar.', 'El canguro es un marsupial conocido por sus saltos largos y su bolsa para cargar a sus crías.', 'Preocupación menor'),
(17, 'Elefante Africano', 'Loxodonta africana', 'Elephantidae', 4, 'Requiere grandes extensiones de tierra para alimentarse y moverse libremente.', 'El elefante africano es el mamífero terrestre más grande, conocido por sus enormes orejas y colmillos.', 'En peligro de extinción'),
(18, 'Cocodrilo del Nilo', 'Crocodylus niloticus', 'Crocodylidae', 5, 'Requiere grandes cuerpos de agua donde pueda nadar y cazar.', 'Es uno de los cocodrilos más grandes y peligrosos, conocido por su agresividad.', 'Vulnerable'),
(19, 'Hipopótamo', 'Hippopotamus amphibius', 'Hippopotamidae', 5, 'Debe tener acceso a agua para refrescarse y descansar durante el día.', 'Los hipopótamos son animales semiacuáticos, conocidos por su gran tamaño y su naturaleza territorial.', 'Preocupación menor'),
(20, 'Tigre de Bengala', 'Panthera tigris tigris', 'Felidae', 1, 'Requiere grandes áreas de bosque o sabana para cazar y descansar.', 'El tigre de Bengala es conocido por sus rayas distintivas y su fuerza, y es uno de los grandes felinos más emblemáticos.', 'En peligro de extinción'),
(21, 'Rana Toro', 'Lithobates catesbeianus', 'Ranidae', 5, 'Requiere cuerpos de agua dulce para reproducirse.', 'La rana toro es conocida por su gran tamaño y su capacidad para emitir ruidos fuertes.', 'Preocupación menor'),
(22, 'Leopardo', 'Panthera pardus', 'Felidae', 1, 'Necesita áreas boscosas para esconderse y cazar.', 'El leopardo es un gran felino conocido por su sigilosa caza y su patrón de manchas.', 'Vulnerable'),
(23, 'Anaconda', 'Eunectes murinus', 'Boidae', 5, 'Debe tener espacios con agua y arbustos para descansar.', 'Es una de las serpientes más grandes del mundo, capaz de ahogar a su presa antes de devorarla.', 'Preocupación menor'),
(24, 'Avestruz', 'Struthio camelus', 'Struthionidae', 4, 'Requiere grandes áreas abiertas y arbustos para cubrirse.', 'El avestruz es el ave más grande del mundo, conocido por su velocidad al correr.', 'Preocupación menor'),
(25, 'Koala', 'Phascolarctos cinereus', 'Phascolarctidae', 1, 'Los koalas necesitan árboles de eucalipto para alimentarse y descansar.', 'El koala es un marsupial que se pasa la mayor parte de su vida en los árboles, alimentándose de hojas de eucalipto.', 'Vulnerable'),
(26, 'Tiburón Martillo', 'Sphyrna mokarran', 'Sphyrnidae', 19, 'Requiere grandes espacios marinos y profundidades para nadar.', 'El tiburón martillo es conocido por la forma única de su cabeza, que le ayuda a mejorar su visión periférica.', 'Vulnerable'),
(27, 'Cebra de Grévy', 'Equus grevyi', 'Equidae', 4, 'Necesita amplias praderas y acceso a agua dulce.', 'La cebra de Grévy es una de las especies más raras de cebra, con rayas más finas y más densas que otras cebras.', 'En peligro de extinción'),
(28, 'Albatros', 'Diomedea exulans', 'Diomedeidae', 19, 'Requiere vastos espacios abiertos sobre el mar para volar.', 'El albatros es una de las aves más grandes, conocida por sus largos vuelos y su capacidad para cruzar grandes distancias marinas.', 'Preocupación menor'),
(29, 'Oso Polar', 'Ursus maritimus', 'Ursidae', 10, 'Necesita un clima frío con grandes extensiones de hielo y agua.', 'El oso polar es un gran depredador de los polos, especializado en la caza de focas.', 'Vulnerable'),
(30, 'Búfalo Africano', 'Syncerus caffer', 'Bovidae', 4, 'Debe tener grandes áreas de sabanas y acceso a agua.', 'El búfalo africano es un animal grande y social que vive en grupos, conocidos por su fuerza y agresividad.', 'Preocupación menor'),
(31, 'Lobo', 'Canis lupus', 'Canidae', 1, 'Los lobos necesitan grandes áreas boscosas y zonas abiertas para cazar.', 'El lobo es un depredador social que caza en manadas y es conocido por su aullido.', 'Preocupación menor'),
(32, 'Tortuga Marina', 'Chelonia mydas', 'Cheloniidae', 19, 'Requiere playas para anidar y aguas cálidas para nadar.', 'La tortuga marina es conocida por su migración a través de océanos y sus grandes viajes de anidación.', 'Vulnerable'),
(33, 'Orangután', 'Pongo pygmaeus', 'Hominidae', 1, 'Requiere bosques densos para trepar y alimentarse de frutas.', 'El orangután es conocido por su inteligencia y habilidad para usar herramientas, es uno de los primates más amenazados.', 'En peligro de extinción'),
(34, 'Bisonte Americano', 'Bison bison', 'Bovidae', 4, 'Debe tener acceso a grandes praderas y áreas abiertas para moverse.', 'El bisonte americano es un animal de gran tamaño que fue casi cazado hasta la extinción, pero actualmente está siendo protegido.', 'Preocupación menor'),
(35, 'Cangrejo Real', 'Paralithodes camtschaticus', 'Lithodidae', 19, 'Debe vivir en aguas frías y ser alimentado con peces y mariscos.', 'El cangrejo real es un crustáceo conocido por su gran tamaño y su carne delicada.', 'Preocupación menor'),
(36, 'Gavial', 'Gavialis gangeticus', 'Gavialidae', 5, 'Necesita agua dulce para nadar y descansar en bancos de arena.', 'El gavial es un tipo de cocodrilo con un hocico largo y delgado, adaptado a cazar peces.', 'En peligro de extinción'),
(37, 'Iguana', 'Iguana iguana', 'Iguanidae', 1, 'Requiere temperaturas cálidas y espacios arbóreos para moverse.', 'La iguana es un reptil herbívoro que se encuentra en áreas tropicales y subtropicales.', 'Preocupación menor'),
(38, 'Pingüino Rey', 'Aptenodytes patagonicus', 'Spheniscidae', 10, 'Necesita un clima frío y espacios de hielo para anidar.', 'El pingüino rey es uno de los más grandes entre los pingüinos y tiene una vida social activa durante las épocas de cría.', 'Vulnerable'),
(39, 'Oso Andino', 'Tremarctos ornatus', 'Ursidae', 1, 'Necesita zonas montañosas y boscosas para alimentarse de frutas y plantas.', 'El oso andino es conocido por su pelaje oscuro y es el único oso en Sudamérica.', 'Vulnerable'),
(40, 'Puma', 'Puma concolor', 'Felidae', 1, 'Requiere zonas montañosas o boscosas donde pueda cazar y moverse.', 'El puma es uno de los felinos más grandes de América, conocido por su adaptabilidad y agilidad.', 'Preocupación menor'),
(41, 'Canguro Rojo', 'Macropus rufus', 'Macropodidae', 4, 'Requiere grandes praderas para saltar y alimentarse.', 'El canguro rojo es el más grande de su especie y es conocido por sus saltos largos.', 'Preocupación menor'),
(42, 'Búho Real', 'Bubo bubo', 'Strigidae', 1, 'Necesita grandes áreas boscosas para cazar y dormir.', 'El búho real es conocido por su gran tamaño y su habilidad para cazar en la oscuridad con una visión excepcional.', 'Preocupación menor'),
(43, 'Peces Payaso', 'Amphiprioninae', 'Pomacentridae', 19, 'Requiere acuarios con anémonas de mar y agua salada.', 'Los peces payaso viven en simbiosis con las anémonas, lo que los protege de los depredadores.', 'Preocupación menor'),
(44, 'Tigre Siberiano', 'Panthera tigris altaica', 'Felidae', 10, 'Necesita vastos bosques de coníferas y áreas frías para cazar.', 'El tigre siberiano es uno de los felinos más grandes del mundo, conocido por su belleza y su pelaje grueso.', 'En peligro de extinción'),
(45, 'Boa Constrictora', 'Boa constrictor', 'Boidae', 5, 'Debe vivir en selvas húmedas donde pueda cazar y descansar.', 'La boa constrictora es conocida por su método de caza, envolviendo a su presa y apretándola hasta asfixiarla.', 'Preocupación menor'),
(46, 'Zorro Rojo', 'Vulpes vulpes', 'Canidae', 1, 'Requiere áreas boscosas o de pradera donde pueda cazar y esconderse.', 'El zorro rojo es conocido por su pelaje rojizo y su astucia para cazar.', 'Preocupación menor'),
(47, 'Jirafa Masai', 'Giraffa tippelskirchi', 'Giraffidae', 4, 'Necesita grandes extensiones de sabana y árboles para alimentarse.', 'La jirafa Masai es una subespecie de jirafa conocida por sus manchas irregulares en el cuerpo.', 'Preocupación menor'),
(48, 'Cocodrilo del Mississippi', 'Crocodylus fuscus', 'Crocodylidae', 5, 'Necesita agua dulce y calor para sobrevivir.', 'Este cocodrilo es una de las especies más raras y es conocido por su color más oscuro.', 'En peligro de extinción'),
(49, 'Rinoceronte Blanco', 'Ceratotherium simum', 'Rhinocerotidae', 4, 'Requiere grandes espacios abiertos y pastizales para alimentarse.', 'El rinoceronte blanco es uno de los animales más grandes de África y se encuentra en peligro de extinción.', 'En peligro de extinción'),
(50, 'Lémur de Cola Anillada', 'Lemur catta', 'Lemuridae', 1, 'Necesita árboles en los que pueda moverse y refugiarse.', 'El lémur de cola anillada es conocido por su distintiva cola con anillos blancos y negros.', 'En peligro de extinción'),
(51, 'Gavilan', 'Accipiter gentilis', 'Accipitridae', 1, 'Requiere áreas boscosas donde pueda cazar presas pequeñas.', 'El gavilán es un ave rapaz que caza principalmente aves pequeñas.', 'Preocupación menor'),
(52, 'Elefante Asiático', 'Elephas maximus', 'Elephantidae', 1, 'Requiere grandes áreas boscosas y acceso a agua.', 'El elefante asiático es más pequeño que el africano, pero también se encuentra en peligro debido a la pérdida de hábitat.', 'En peligro de extinción'),
(53, 'Loro Gris Africano', 'Psittacus erithacus', 'Psittacidae', 1, 'Requiere un ambiente cálido y accesos a frutas y vegetales.', 'El loro gris africano es conocido por su capacidad para imitar sonidos y palabras humanas.', 'En peligro de extinción'),
(54, 'Cebra Común', 'Equus quagga', 'Equidae', 4, 'Requiere grandes praderas con suficiente agua y sombra.', 'La cebra común es una de las especies más emblemáticas de las sabanas africanas, conocida por su pelaje rayado.', 'Preocupación menor'),
(55, 'Águila Real', 'Aquila chrysaetos', 'Accipitridae', 1, 'Necesita grandes áreas de montañas y espacios abiertos para cazar.', 'El águila real es uno de los rapaces más grandes y conocidos por su vuelo majestoso y su agudeza visual.', 'Preocupación menor'),
(56, 'Serpiente de Cascabel', 'Crotalus atrox', 'Viperidae', 1, 'Debe vivir en zonas secas y cálidas, se alimenta de pequeños mamíferos.', 'La serpiente de cascabel es conocida por su veneno mortal y el sonido característico que emite con su cascabel.', 'Preocupación menor'),
(57, 'Tigre de Bengala', 'Panthera tigris tigris', 'Felidae', 1, 'Requiere bosques densos y amplios espacios para cazar.', 'El tigre de Bengala es una subespecie de tigre muy conocida por su gran tamaño y su pelaje anaranjado con rayas negras.', 'En peligro de extinción'),
(58, 'Caimán Negro', 'Melanosuchus niger', 'Alligatordae', 5, 'Vive en aguas dulces y pantanosas, donde se alimenta de peces y mamíferos pequeños.', 'El caimán negro es uno de los reptiles más grandes de América del Sur, conocido por su agresividad y su gran tamaño.', 'En peligro'),
(59, 'Hipopótamo', 'Hippopotamus amphibius', 'Hippopotamidae', 5, 'Requiere zonas húmedas y acceso a agua para pasar la mayor parte del tiempo dentro.', 'El hipopótamo es un gran mamífero herbívoro que pasa mucho tiempo en el agua y es conocido por su gran tamaño y fuerza.', 'Preocupación menor'),
(60, 'Avestruz', 'Struthio camelus', 'Struthionidae', 4, 'Necesita grandes áreas de sabanas y pastizales para moverse con libertad.', 'El avestruz es el ave más grande y pesada del mundo, conocida por su capacidad de correr a altas velocidades.', 'Preocupación menor'),
(61, 'Foca Común', 'Phoca vitulina', 'Phocidae', 5, 'Requiere playas para descansar y aguas frías para nadar y alimentarse.', 'La foca común es un mamífero marino conocido por su cuerpo adaptado para nadar y su comportamiento curioso.', 'Preocupación menor'),
(62, 'Pavo Real', 'Pavo cristatus', 'Phasianidae', 1, 'Requiere zonas boscosas y espacios abiertos para desplegar su plumaje.', 'El pavo real es famoso por su colorido plumaje, especialmente el de los machos durante la época de cortejo.', 'Preocupación menor'),
(63, 'Canguro Gris', 'Macropus giganteus', 'Macropodidae', 4, 'Necesita grandes áreas de praderas y arbustos para saltar y alimentarse.', 'El canguro gris es uno de los marsupiales más grandes y conocidos por su capacidad para saltar largas distancias.', 'Preocupación menor'),
(64, 'Mandril', 'Mandrillus sphinx', 'Cercopithecidae', 1, 'Requiere bosques tropicales y comida variada, incluyendo frutas, hojas y pequeños animales.', 'El mandril es un primate conocido por sus colores vibrantes en el rostro y su estructura social jerárquica.', 'En peligro de extinción'),
(65, 'Cebra de la Meseta', 'Equus grevyi', 'Equidae', 4, 'Requiere áreas abiertas con suficiente agua y vegetación para alimentarse.', 'La cebra de la meseta es una subespecie de cebra que vive en las sabanas africanas.', 'En peligro de extinción'),
(66, 'Lince Boreal', 'Lynx lynx', 'Felidae', 1, 'Requiere bosques fríos con suficiente cobertura de nieve y presas para cazar.', 'El lince boreal es conocido por su agilidad y su capacidad para cazar presas en hábitats nevados.', 'Preocupación menor'),
(67, 'Caiman Crocodilus', 'Crocodylus crocodilus', 'Crocodylidae', 5, 'Requiere zonas húmedas, pantanosas y áreas con vegetación densa.', 'El caimán crocodilus es un reptil que habita zonas de agua dulce y es conocido por su habilidad para moverse rápidamente tanto en agua como en tierra.', 'Preocupación menor'),
(68, 'Jaguar', 'Panthera onca', 'Felidae', 1, 'Requiere bosques tropicales y áreas selváticas con gran abundancia de presas.', 'El jaguar es un felino de gran tamaño, conocido por su fuerza y su capacidad para cazar presas grandes.', 'Casi en peligro de extinción'),
(69, 'Tiburón Blanco', 'Carcharodon carcharias', 'Lamnidae', 19, 'Requiere océanos fríos y templados, principalmente en aguas profundas.', 'El tiburón blanco es uno de los depredadores marinos más conocidos y temidos, famoso por su tamaño y su fuerza.', 'Vulnerable'),
(70, 'Puma', 'Puma concolor', 'Felidae', 1, 'Requiere grandes áreas boscosas o de montaña para cazar.', 'El puma es un felino extremadamente adaptable y uno de los depredadores más solitarios.', 'Preocupación menor'),
(71, 'Peces Loro', 'Scarus spp.', 'Scaridae', 19, 'Requiere arrecifes de coral para refugiarse y alimentarse de algas.', 'Los peces loro son conocidos por su capacidad para masticar y triturar corales, jugando un papel importante en el ecosistema del arrecife.', 'Preocupación menor'),
(72, 'Alce', 'Alces alces', 'Cervidae', 1, 'Requiere bosques fríos y áreas de tundra para alimentarse.', 'El alce es el miembro más grande de la familia de los ciervos, conocido por su gran tamaño y su impresionante cornamenta.', 'Preocupación menor'),
(73, 'Gorila', 'Gorilla gorilla', 'Hominidae', 1, 'Requiere densos bosques tropicales y una dieta principalmente herbívora.', 'El gorila es el mayor de los primates y es conocido por su inteligencia y su estructura social en grupos.', 'En peligro de extinción'),
(74, 'Cisne Negro', 'Cygnus atratus', 'Anatidae', 5, 'Requiere lagos y cuerpos de agua dulce para alimentarse y descansar.', 'El cisne negro es conocido por su plumaje negro y su gracia en el agua, es una especie originaria de Australia.', 'Preocupación menor'),
(75, 'Águila Calva', 'Haliaeetus leucocephalus', 'Accipitridae', 1, 'Requiere grandes áreas de agua dulce para cazar peces y descansar en árboles cercanos.', 'El águila calva es el símbolo nacional de los Estados Unidos, conocida por su apariencia distintiva y su potente vuelo.', 'Preocupación menor'),
(76, 'Orangután de Borneo', 'Pongo pygmaeus', 'Hominidae', 1, 'Requiere bosques tropicales densos con abundante vegetación.', 'El orangután de Borneo es un primate conocido por su inteligencia y su habilidad para utilizar herramientas.', 'En peligro de extinción'),
(77, 'Rinoceronte Blanco', 'Ceratotherium simum', 'Rhinocerotidae', 4, 'Requiere áreas abiertas con suficiente pasto y agua.', 'El rinoceronte blanco es una de las especies más grandes de rinocerontes y es conocido por su gran tamaño y cuerno frontal.', 'En peligro de extinción'),
(78, 'Cebra de Gravy', 'Equus grevyi', 'Equidae', 4, 'Requiere zonas abiertas con vegetación para pastar.', 'La cebra de Gravy es una de las especies más raras de cebra, conocida por sus rayas finas y su gran tamaño.', 'En peligro de extinción'),
(79, 'Panda Gigante', 'Ailuropoda melanoleuca', 'Ursidae', 1, 'Requiere bosques de bambú y grandes áreas para moverse.', 'El panda gigante es uno de los animales más carismáticos, conocido por su dieta basada en bambú y su comportamiento pacífico.', 'En peligro'),
(80, 'Iguana Verde', 'Iguana iguana', 'Iguanidae', 5, 'Requiere zonas cálidas y húmedas, con acceso a árboles y vegetación.', 'La iguana verde es un reptil herbívoro que se encuentra principalmente en América Central y del Sur.', 'Preocupación menor'),
(81, 'Cheetah', 'Acinonyx jubatus', 'Felidae', 4, 'Requiere vastas zonas abiertas para correr a altas velocidades.', 'El cheetah es el animal terrestre más rápido, capaz de alcanzar velocidades de hasta 120 km/h en distancias cortas.', 'Vulnerable'),
(82, 'Pelícano', 'Pelecanus spp.', 'Pelecanidae', 5, 'Requiere zonas de agua dulce o salada para pescar.', 'El pelícano es un ave acuática conocida por su pico largo y su capacidad para pescar con su bolsa gástrica.', 'Preocupación menor'),
(83, 'Lynx Canadiense', 'Lynx canadensis', 'Felidae', 1, 'Requiere bosques fríos y áreas de tundra con una abundante población de conejos.', 'El lince canadiense es conocido por sus orejas puntiagudas y su pelaje grueso adaptado al frío.', 'Preocupación menor'),
(84, 'Cocodrilo del Nilo', 'Crocodylus niloticus', 'Crocodylidae', 5, 'Requiere grandes cuerpos de agua dulce y áreas pantanosas.', 'El cocodrilo del Nilo es uno de los reptiles más grandes y peligrosos, conocido por su capacidad para cazar en tierra y agua.', 'Vulnerable'),
(85, 'Búfalo Africano', 'Syncerus caffer', 'Bovidae', 4, 'Requiere grandes sabanas y pastizales para alimentarse.', 'El búfalo africano es conocido por su comportamiento agresivo y su gran tamaño.', 'Preocupación menor'),
(86, 'Tiburón Martillo', 'Sphyrna spp.', 'Sphyrnidae', 19, 'Requiere aguas templadas y tropicales, especialmente cerca de arrecifes.', 'El tiburón martillo es conocido por su cabeza en forma de martillo, que le ayuda a mejorar su visión y a cazar.', 'Vulnerable'),
(87, 'Koala', 'Phascolarctos cinereus', 'Phascolarctidae', 1, 'Requiere bosques de eucalipto y es extremadamente sensible a los cambios en su hábitat.', 'El koala es un marsupial herbívoro que pasa la mayor parte de su vida durmiendo en los árboles.', 'Vulnerable'),
(88, 'León', 'Panthera leo', 'Felidae', 4, 'Requiere grandes praderas abiertas y acceso a manadas de presas.', 'El león es conocido como el "rey de la selva", famoso por su melena y su comportamiento social en manadas.', 'Preocupación menor'),
(89, 'Crocodrilo de Agua Salada', 'Crocodylus porosus', 'Crocodylidae', 5, 'Requiere tanto agua dulce como salada para moverse entre marismas y costas.', 'El cocodrilo de agua salada es el más grande de todos los cocodrilos y es conocido por su agresividad.', 'Vulnerable'),
(90, 'Pez Payaso', 'Amphiprioninae', 'Pomacentridae', 19, 'Requiere arrecifes de coral donde se asocia con anémonas.', 'El pez payaso es famoso por su relación simbiótica con las anémonas, las cuales lo protegen de depredadores.', 'Preocupación menor'),
(91, 'Aye-Aye', 'Daubentonia madagascariensis', 'Daubentoniidae', 1, 'Requiere bosques tropicales húmedos y una dieta que incluye insectos y frutas.', 'El aye-aye es un lémur nocturno conocido por sus dedos extremadamente largos para extraer insectos de la corteza de los árboles.', 'En peligro de extinción'),
(92, 'Antílope Impala', 'Aepyceros melampus', 'Bovidae', 4, 'Requiere sabanas y pastizales donde pueda encontrar hierba y agua.', 'El impala es conocido por su capacidad de saltar grandes distancias y por formar manadas grandes y móviles.', 'Preocupación menor'),
(93, 'Tortuga de Galápagos', 'Chelonoidis nigra', 'Testudinidae', 5, 'Requiere zonas áridas y rocosas con acceso a cactus y vegetación.', 'La tortuga de Galápagos es famosa por su longevidad y su contribución al ecosistema de las islas.', 'En peligro'),
(94, 'Jirafa', 'Giraffa camelopardalis', 'Giraffidae', 4, 'Requiere grandes zonas abiertas donde pueda alcanzar las hojas altas de los árboles.', 'La jirafa es el animal terrestre más alto y es conocida por su largo cuello y su distintivo patrón de manchas.', 'Preocupación menor'),
(95, 'Chita', 'Acinonyx jubatus', 'Felidae', 4, 'Requiere praderas abiertas para poder alcanzar su velocidad al cazar.', 'La chita es el animal terrestre más rápido del mundo, capaz de alcanzar hasta 110 km/h en una corta distancia.', 'Vulnerable'),
(96, 'Pingüino de Adelia', 'Pygoscelis adeliae', 'Spheniscidae', 5, 'Requiere costas frías y cubiertas de nieve donde pueda encontrar peces.', 'El pingüino de Adelia es una especie de pingüino que habita en la Antártida, conocida por sus acentuados hábitos migratorios.', 'Preocupación menor'),
(97, 'Pecarí', 'Tayassu tajacu', 'Tayassuidae', 4, 'Requiere bosques tropicales secos y áreas de matorral.', 'El pecarí es un mamífero de tamaño medio conocido por su hocico alargado y su comportamiento social en manadas.', 'Preocupación menor'),
(98, 'Oso Panda Rojo', 'Ailurus fulgens', 'Ailuridae', 1, 'Requiere bosques de bambú y temperaturas frescas.', 'El panda rojo es conocido por su pelaje rojizo y su capacidad para trepar árboles.', 'En peligro de extinción'),
(99, 'Murciélago Vampiro', 'Desmodus rotundus', 'Phyllostomidae', 1, 'Vive en cavernas y áreas oscuras, alimentándose de la sangre de otros mamíferos.', 'El murciélago vampiro es conocido por su capacidad para alimentarse de sangre de otros animales, utilizando sus colmillos especializados.', 'Preocupación menor'),
(100, 'Búho Real', 'Bubo bubo', 'Strigidae', 1, 'Requiere bosques densos y grandes áreas de campo abierto para cazar.', 'El búho real es conocido por su gran tamaño y su capacidad para cazar presas nocturnas con agudeza visual.', 'Preocupación menor');

-- -----------------------------------------------------
-- Tabla Ejemplar
-- -----------------------------------------------------
CREATE TABLE Ejemplar (
    ID_Ejemplar INT AUTO_INCREMENT PRIMARY KEY,
    ID_Especie INT NOT NULL,
    ID_Zoo INT NOT NULL,
    Fnacimiento DATE,
    Fmuerte DATE,
    Nombre VARCHAR(60),
    Madre INT,
    Padre INT,
    FOREIGN KEY (ID_Especie) REFERENCES Especie(ID_Especie) ON DELETE CASCADE,
    FOREIGN KEY (Madre) REFERENCES Ejemplar(ID_Ejemplar) ON DELETE SET NULL,
    FOREIGN KEY (Padre) REFERENCES Ejemplar(ID_Ejemplar) ON DELETE SET NULL,
    FOREIGN KEY (ID_Zoo) REFERENCES Zoologico(ID_Zoo) ON DELETE CASCADE
) ENGINE=InnoDB;
CREATE INDEX idx_id_especie ON Ejemplar(ID_Especie);
CREATE INDEX idx_id_zoo_ejemplar ON Ejemplar(ID_Zoo);


INSERT INTO Ejemplar (ID_Ejemplar, ID_Especie, ID_Zoo, Fnacimiento, Fmuerte, Nombre, Madre, Padre) VALUES
(1, 1, 1, '2022-01-15', NULL, 'Milo', NULL, NULL),   -- Padre
(2, 1, 1, '2021-12-10', NULL, 'Simba', NULL, NULL),  -- Padre
(3, 1, 1, '2022-03-05', NULL, 'Nala', 1, 2),         -- Hija de Milo y Simba
(4, 2, 1, '2023-02-20', NULL, 'Penny', NULL, NULL),  -- Padre
(5, 2, 1, '2022-07-18', NULL, 'Dumbo', NULL, NULL),  -- Padre
(6, 3, 1, '2021-05-30', NULL, 'Kiwi', NULL, NULL),   -- Padre
(7, 3, 1, '2021-06-15', NULL, 'Waddles', NULL, NULL),-- Padre
(8, 3, 1, '2022-04-01', NULL, 'Chilly', 6, 7),       -- Hija de Kiwi y Waddles
(9, 4, 1, '2022-09-10', NULL, 'Polly', NULL, NULL),  -- Padre
(10, 4, 1, '2021-11-25', NULL, 'Eddie', NULL, NULL), -- Padre
(11, 5, 1, '2021-03-14', NULL, 'Charlie', NULL, NULL),-- Padre
(12, 5, 1, '2022-05-17', NULL, 'Shelly', NULL, NULL), -- Padre
(13, 6, 1, '2020-12-22', NULL, 'Spot', NULL, NULL),   -- Padre
(14, 6, 1, '2022-01-12', NULL, 'Ribbit', NULL, NULL),  -- Padre
(15, 6, 1, '2022-02-02', NULL, 'Jump', 13, 14),       -- Hija de Spot y Ribbit
(16, 7, 1, '2022-08-15', NULL, 'Fluffy', NULL, NULL),  -- Padre
(17, 7, 1, '2022-09-05', NULL, 'Snowball', NULL, NULL),-- Padre
(18, 8, 1, '2022-11-10', NULL, 'Rex', NULL, NULL),    -- Padre
(19, 8, 1, '2022-12-01', NULL, 'Buddy', NULL, NULL),  -- Padre
(20, 8, 1, '2023-01-15', NULL, 'Max', 18, 19),        -- Hijo de Rex y Buddy
(21, 9, 1, '2021-04-25', NULL, 'Bella', NULL, NULL),  -- Padre
(22, 9, 1, '2020-10-20', NULL, 'Whiskers', NULL, NULL),-- Padre
(23, 10, 1, '2021-07-07', NULL, 'Nemo', NULL, NULL),  -- Padre
(24, 10, 1, '2021-09-15', NULL, 'Dory', NULL, NULL),  -- Padre
(25, 10, 1, '2022-05-30', NULL, 'Bubbles', 23, 24),   -- Hija de Nemo y Dory
(26, 11, 1, '2022-03-12', NULL, 'Coco', NULL, NULL),  -- Padre
(27, 11, 1, '2022-04-20', NULL, 'Polly', NULL, NULL), -- Padre
(28, 12, 1, '2023-01-01', NULL, 'Spike', NULL, NULL), -- Padre
(29, 12, 1, '2022-02-20', NULL, 'Prickles', NULL, NULL),-- Padre
(30, 12, 1, '2022-03-15', NULL, 'Puff', 28, 29),      -- Hija de Spike y Prickles
(31, 13, 1, '2021-02-05', NULL, 'Bella', NULL, NULL),  -- Padre
(32, 13, 1, '2022-07-22', NULL, 'Whiskers', NULL, NULL), -- Padre
(33, 13, 1, '2023-03-10', NULL, 'Max', 31, 32),        -- Hijo de Bella y Whiskers
(34, 14, 1, '2022-08-25', NULL, 'Nala', NULL, NULL),    -- Padre
(35, 14, 1, '2022-11-12', NULL, 'Leo', NULL, NULL),     -- Padre
(36, 14, 1, '2023-04-10', NULL, 'Simba', 34, 35),       -- Hijo de Nala y Leo
(37, 15, 1, '2021-06-05', NULL, 'Tom', NULL, NULL),     -- Padre
(38, 15, 1, '2022-05-19', NULL, 'Jerry', NULL, NULL),   -- Padre
(39, 15, 1, '2023-01-10', NULL, 'Spike', 37, 38),       -- Hijo de Tom y Jerry
(40, 16, 1, '2021-10-11', NULL, 'Luna', NULL, NULL),    -- Padre
(41, 16, 1, '2022-04-17', NULL, 'Rocky', NULL, NULL),   -- Padre
(42, 16, 1, '2023-02-25', NULL, 'Bella', 40, 41),       -- Hija de Luna y Rocky
(43, 17, 1, '2022-06-08', NULL, 'Oscar', NULL, NULL),   -- Padre
(44, 17, 1, '2022-09-28', NULL, 'Milo', NULL, NULL),    -- Padre
(45, 17, 1, '2023-03-03', NULL, 'Finn', 43, 44),        -- Hijo de Oscar y Milo
(46, 18, 1, '2022-07-18', NULL, 'Daisy', NULL, NULL),   -- Padre
(47, 18, 1, '2023-04-25', NULL, 'Sadie', NULL, NULL),   -- Padre
(48, 1, 2, '2022-02-20', NULL, 'Toby', NULL, NULL),   -- Padre
(49, 1, 2, '2021-11-05', NULL, 'Leo', NULL, NULL),    -- Padre
(50, 1, 2, '2022-07-15', NULL, 'Chester', 48, 49),    -- Hijo de Toby y Leo
(51, 2, 2, '2023-03-12', NULL, 'Cleo', NULL, NULL),   -- Padre
(52, 2, 2, '2022-09-30', NULL, 'Oscar', NULL, NULL),  -- Padre
(53, 2, 2, '2023-02-25', NULL, 'Ruby', 51, 52),       -- Hija de Cleo y Oscar
(54, 3, 2, '2022-01-20', NULL, 'Zoe', NULL, NULL),    -- Padre
(55, 3, 2, '2022-04-10', NULL, 'Milo', NULL, NULL),   -- Padre
(56, 3, 2, '2022-06-25', NULL, 'Chester', 54, 55),    -- Hija de Zoe y Milo
(57, 4, 2, '2022-08-17', NULL, 'Charlie', NULL, NULL),-- Padre
(58, 4, 2, '2021-09-04', NULL, 'Toby', NULL, NULL),  -- Padre
(59, 5, 2, '2021-03-19', NULL, 'Lucy', NULL, NULL),  -- Padre
(60, 5, 2, '2022-05-10', NULL, 'Benny', NULL, NULL), -- Padre
(61, 5, 2, '2023-01-18', NULL, 'Bella',  NULL,  NULL),      -- Hija de Lucy y Benny
(62, 6, 2, '2021-11-30', NULL, 'Leo', NULL, NULL),    -- Padre
(63, 6, 2, '2022-04-22', NULL, 'Luna', NULL, NULL),   -- Padre
(64, 6, 2, '2023-02-05', NULL, 'Max',  NULL,  NULL),        -- Hija de Leo y Luna
(65, 7, 2, '2022-09-02', NULL, 'Coco', NULL, NULL),   -- Padre
(66, 7, 2, '2022-11-15', NULL, 'Ella', NULL, NULL),   -- Padre
(67, 7, 2, '2023-01-28', NULL, 'Charlie', 65, 66),    -- Hija de Coco y Ella
(68, 8, 2, '2022-06-18', NULL, 'Buddy', NULL, NULL),  -- Padre
(69, 8, 2, '2022-07-02', NULL, 'Rex', NULL, NULL),    -- Padre
(70, 8, 2, '2022-10-14', NULL, 'Daisy', 68, 69),      -- Hija de Buddy y Rex
(71, 9, 2, '2021-12-01', NULL, 'Lily', NULL, NULL),   -- Padre
(72, 9, 2, '2022-03-05', NULL, 'Max', NULL, NULL),    -- Padre
(73, 9, 2, '2022-05-28', NULL, 'Milo', 71, 72),       -- Hija de Lily y Max
(74, 10, 2, '2021-10-10', NULL, 'Rex', NULL, NULL),   -- Padre
(75, 10, 2, '2022-01-18', NULL, 'Penny', NULL, NULL), -- Padre
(76, 1, 3, '2022-02-10', NULL, 'Milo', NULL, NULL),    -- Padre
(77, 1, 3, '2021-11-20', NULL, 'Simba', NULL, NULL),   -- Padre
(78, 1, 3, '2022-05-03', NULL, 'Luna',  NULL,  NULL),        -- Hija de Milo y Simba
(79, 2, 3, '2022-06-14', NULL, 'Bella', NULL, NULL),   -- Padre
(80, 2, 3, '2022-08-22', NULL, 'Oscar', NULL, NULL),   -- Padre
(81, 2, 3, '2023-01-16', NULL, 'Chester', 79, 80),     -- Hija de Bella y Oscar
(82, 3, 3, '2022-05-25', NULL, 'Lily', NULL, NULL),    -- Padre
(83, 3, 3, '2022-09-18', NULL, 'Leo', NULL, NULL),     -- Padre
(84, 3, 3, '2023-03-07', NULL, 'Max', 82, 83),         -- Hija de Lily y Leo
(85, 4, 3, '2022-01-15', NULL, 'Coco', NULL, NULL),    -- Padre
(86, 4, 3, '2022-03-22', NULL, 'Oscar', NULL, NULL),   -- Padre
(87, 5, 3, '2022-07-20', NULL, 'Chester', NULL, NULL), -- Padre
(88, 5, 3, '2022-10-10', NULL, 'Tom', NULL, NULL),     -- Padre
(89, 5, 3, '2023-04-14', NULL, 'Bella',  NULL,  NULL),       -- Hija de Chester y Tom
(90, 6, 3, '2022-11-28', NULL, 'Rex', NULL, NULL),     -- Padre
(91, 6, 3, '2022-12-03', NULL, 'Buddy', NULL, NULL),   -- Padre
(92, 6, 3, '2023-02-10', NULL, 'Milo', 90, 91),        -- Hija de Rex y Buddy
(93, 7, 3, '2022-04-12', NULL, 'Fluffy', NULL, NULL),  -- Padre
(94, 7, 3, '2022-06-17', NULL, 'Snowball', NULL, NULL),-- Padre
(95, 7, 3, '2022-09-22', NULL, 'Rex', 93, 94),         -- Hija de Fluffy y Snowball
(96, 8, 3, '2022-07-28', NULL, 'Rocky', NULL, NULL),   -- Padre
(97, 8, 3, '2022-09-12', NULL, 'Leo', NULL, NULL),     -- Padre
(98, 8, 3, '2023-02-14', NULL, 'Daisy', 96, 97),       -- Hija de Rocky y Leo
(99, 9, 3, '2022-10-09', NULL, 'Max', NULL, NULL),     -- Padre
(100, 9, 3, '2022-12-25', NULL, 'Rex', NULL, NULL),    -- Padre
(101, 9, 3, '2023-04-03', NULL, 'Penny',  NULL,  NULL),     -- Hija de Max y Rex
(102, 10, 3, '2022-01-30', NULL, 'Tom', NULL, NULL),   -- Padre
(103, 10, 3, '2022-02-28', NULL, 'Jerry', NULL, NULL), -- Padre
(104, 10, 3, '2022-07-06', NULL, 'Rex',  NULL,  NULL),     -- Hijo de Tom y Jerry
(105, 11, 3, '2021-11-12', NULL, 'Oscar', NULL, NULL), -- Padre
(106, 11, 3, '2022-04-25', NULL, 'Rocky', NULL, NULL), -- Padre
(107, 11, 3, '2022-06-11', NULL, 'Penny', 105, 106),   -- Hija de Oscar y Rocky
(108, 12, 3, '2022-02-15', NULL, 'Milo', NULL, NULL),  -- Padre
(109, 12, 3, '2022-04-05', NULL, 'Buddy', NULL, NULL), -- Padre
(110, 12, 3, '2022-09-29', NULL, 'Leo', 108, 109),     -- Hijo de Milo y Buddy
(111, 13, 3, '2021-08-18', NULL, 'Oscar', NULL, NULL), -- Padre
(112, 13, 3, '2022-02-12', NULL, 'Rex', NULL, NULL),   -- Padre
(113, 13, 3, '2022-07-25', NULL, 'Penny', 111, 112),   -- Hija de Oscar y Rex
(114, 14, 3, '2022-03-01', NULL, 'Max', NULL, NULL),   -- Padre
(115, 14, 3, '2022-05-19', NULL, 'Leo', NULL, NULL),   -- Padre
(116, 14, 3, '2022-08-07', NULL, 'Chester', 114, 115), -- Hijo de Max y Leo
(117, 15, 3, '2022-06-29', NULL, 'Charlie', NULL, NULL),-- Padre
(118, 1, 4, '2022-02-22', NULL, 'Zoro', NULL, NULL),    -- Padre
(119, 1, 4, '2021-12-18', NULL, 'Bella', NULL, NULL),   -- Padre
(120, 1, 4, '2023-04-05', NULL, 'Leo', 118, 119),       -- Hijo de Zoro y Bella
(121, 2, 4, '2022-03-12', NULL, 'Cleo', NULL, NULL),    -- Padre
(122, 2, 4, '2022-06-03', NULL, 'Oscar', NULL, NULL),   -- Padre
(123, 2, 4, '2023-01-28', NULL, 'Chester',  NULL,  NULL),   -- Hija de Cleo y Oscar
(124, 3, 4, '2022-04-19', NULL, 'Rex', NULL, NULL),     -- Padre
(125, 3, 4, '2022-07-30', NULL, 'Fluffy', NULL, NULL),  -- Padre
(126, 3, 4, '2023-03-13', NULL, 'Daisy', 124, 125),     -- Hija de Rex y Fluffy
(127, 4, 4, '2022-01-03', NULL, 'Tommy', NULL, NULL),   -- Padre
(128, 4, 4, '2022-04-15', NULL, 'Jerry', NULL, NULL),   -- Padre
(129, 4, 4, '2023-02-17', NULL, 'Spike', 127, 128),     -- Hija de Tommy y Jerry
(130, 5, 4, '2022-07-07', NULL, 'Buddy', NULL, NULL),   -- Padre
(131, 5, 4, '2022-10-05', NULL, 'Milo', NULL, NULL),    -- Padre
(132, 5, 4, '2023-01-22', NULL, 'Rex', 130, 131),       -- Hija de Buddy y Milo
(133, 6, 4, '2022-05-08', NULL, 'Leo', NULL, NULL),     -- Padre
(134, 6, 4, '2022-08-20', NULL, 'Rocky', NULL, NULL),   -- Padre
(135, 6, 4, '2023-03-02', NULL, 'Chester', 133, 134),   -- Hija de Leo y Rocky
(136, 7, 4, '2022-09-17', NULL, 'Milo', NULL, NULL),    -- Padre
(137, 7, 4, '2022-11-01', NULL, 'Penny', NULL, NULL),   -- Padre
(138, 7, 4, '2023-02-22', NULL, 'Fluffy',  NULL,  NULL),    -- Hija de Milo y Penny
(139, 8, 4, '2022-06-18', NULL, 'Rocky', NULL, NULL),   -- Padre
(140, 8, 4, '2022-09-13', NULL, 'Simba', NULL, NULL),   -- Padre
(141, 1, 5, '2022-01-15', NULL, 'Toby', NULL, NULL),     -- Padre
(142, 1, 5, '2022-03-22', NULL, 'Maximus', NULL, NULL),  -- Padre
(143, 1, 5, '2023-05-12', NULL, 'Apollo', 141, 142),     -- Hijo de Toby y Maximus
(144, 2, 5, '2022-04-05', NULL, 'Sasha', NULL, NULL),    -- Padre
(145, 2, 5, '2022-07-10', NULL, 'Luna', NULL, NULL),     -- Padre
(146, 2, 5, '2023-02-20', NULL, 'Fiona',  NULL,  NULL),      -- Hija de Sasha y Luna
(147, 3, 5, '2022-02-19', NULL, 'Jake', NULL, NULL),     -- Padre
(148, 3, 5, '2022-08-30', NULL, 'Stella', NULL, NULL),   -- Padre
(149, 3, 5, '2023-04-03', NULL, 'Leo', 147, 148),        -- Hijo de Jake y Stella
(150, 4, 5, '2022-06-08', NULL, 'Maverick', NULL, NULL), -- Padre
(151, 4, 5, '2022-09-17', NULL, 'Phoenix', NULL, NULL),  -- Padre
(152, 4, 5, '2023-01-25', NULL, 'Rocky', 150, 151),      -- Hijo de Maverick y Phoenix
(153, 5, 5, '2022-07-25', NULL, 'Penny', NULL, NULL),    -- Padre
(154, 5, 5, '2022-09-05', NULL, 'Buddy', NULL, NULL),    -- Padre
(155, 5, 5, '2023-03-28', NULL, 'Rex',  NULL,  NULL),        -- Hijo de Penny y Buddy
(156, 6, 5, '2022-08-20', NULL, 'Tess', NULL, NULL),     -- Padre
(157, 6, 5, '2022-11-10', NULL, 'Milo', NULL, NULL),     -- Padre
(158, 6, 5, '2023-02-22', NULL, 'Charlie', 156, 157),    -- Hija de Tess y Milo
(159, 7, 5, '2022-05-10', NULL, 'Leo', NULL, NULL),      -- Padre
(160, 7, 5, '2022-07-30', NULL, 'Cleo', NULL, NULL),     -- Padre
(161, 7, 5, '2023-01-19', NULL, 'Chester', 159, 160),    -- Hija de Leo y Cleo
(162, 8, 5, '2022-06-17', NULL, 'Milo', NULL, NULL),     -- Padre
(163, 8, 5, '2022-08-09', NULL, 'Zara', NULL, NULL),     -- Padre
(164, 8, 5, '2023-04-02', NULL, 'Jasper', 162, 163),     -- Hija de Milo y Zara
(165, 9, 5, '2022-07-19', NULL, 'Luna', NULL, NULL),     -- Padre
(166, 9, 5, '2022-10-05', NULL, 'Rocky', NULL, NULL),    -- Padre
(167, 9, 5, '2023-02-13', NULL, 'Bella', 165, 166),      -- Hija de Luna y Rocky
(168, 10, 5, '2022-06-25', NULL, 'Charlie', NULL, NULL), -- Padre
(169, 10, 5, '2022-09-03', NULL, 'Tommy', NULL, NULL),   -- Padre
(170, 10, 5, '2023-01-28', NULL, 'Oscar',  NULL,  NULL),     -- Hija de Charlie y Tommy
(171, 11, 5, '2022-02-08', NULL, 'Winnie', NULL, NULL),  -- Padre
(172, 11, 5, '2022-04-18', NULL, 'Fluffy', NULL, NULL),  -- Padre
(173, 11, 5, '2023-03-30', NULL, 'Zoe', 171, 172),       -- Hija de Winnie y Fluffy
(174, 12, 5, '2022-06-14', NULL, 'Rex', NULL, NULL),     -- Padre
(175, 12, 5, '2022-08-23', NULL, 'Sadie', NULL, NULL),   -- Padre
(176, 12, 5, '2023-01-12', NULL, 'Buddy', 174, 175),     -- Hija de Rex y Sadie
(177, 13, 5, '2022-07-05', NULL, 'Rex', NULL, NULL),     -- Padre
(178, 13, 5, '2022-10-12', NULL, 'Rocky', NULL, NULL),   -- Padre
(179, 13, 5, '2023-03-18', NULL, 'Fluffy', 177, 178),    -- Hija de Rex y Rocky
(180, 14, 5, '2022-09-29', NULL, 'Tommy', NULL, NULL),   -- Padre
(181, 14, 5, '2022-11-14', NULL, 'Luna', NULL, NULL),    -- Padre
(182, 14, 5, '2023-04-06', NULL, 'Rex',  NULL,  NULL),       -- Hija de Tommy y Luna
(183, 15, 5, '2022-08-03', NULL, 'Max', NULL, NULL),     -- Padre
(184, 15, 5, '2022-09-17', NULL, 'Rocky', NULL, NULL),   -- Padre
(185, 15, 5, '2023-01-18', NULL, 'Bella', 183, 184),     -- Hija de Max y Rocky
(186, 16, 5, '2022-10-01', NULL, 'Milo', NULL, NULL),    -- Padre
(187, 16, 5, '2022-11-06', NULL, 'Zara', NULL, NULL),    -- Padre
(188, 16, 5, '2023-04-07', NULL, 'Oscar', 186, 187),     -- Hija de Milo y Zara
(189, 17, 5, '2022-06-12', NULL, 'Charlie', NULL, NULL), -- Padre
(190, 17, 5, '2022-08-21', NULL, 'Sadie', NULL, NULL),   -- Padre
(191, 17, 5, '2023-03-22', NULL, 'Toby', 189, 190),      -- Hija de Charlie y Sadie
(192, 18, 5, '2022-05-28', NULL, 'Cleo', NULL, NULL),    -- Padre
(193, 18, 5, '2022-07-14', NULL, 'Buddy', NULL, NULL),   -- Padre
(194, 18, 5, '2023-02-17', NULL, 'Bella',  NULL,  NULL),     -- Hija de Cleo y Buddy
(195, 19, 5, '2022-09-09', NULL, 'Tommy', NULL, NULL),   -- Padre
(196, 19, 5, '2022-11-25', NULL, 'Rex', NULL, NULL),     -- Padre
(197, 1, 6, '2022-04-03', NULL, 'Spike', NULL, NULL),      -- Padre
(198, 1, 6, '2022-06-12', NULL, 'Thor', NULL, NULL),       -- Padre
(199, 1, 6, '2023-03-15', NULL, 'Apollo', 197, 198),       -- Hijo de Spike y Thor
(200, 2, 6, '2022-07-20', NULL, 'Zoe', NULL, NULL),         -- Padre
(201, 2, 6, '2022-09-18', NULL, 'Milo', NULL, NULL),        -- Padre
(202, 2, 6, '2023-02-14', NULL, 'Ruby', 200, 201),          -- Hija de Zoe y Milo
(203, 3, 6, '2022-08-10', NULL, 'Leo', NULL, NULL),         -- Padre
(204, 3, 6, '2022-10-25', NULL, 'Maximus', NULL, NULL),     -- Padre
(205, 3, 6, '2023-04-06', NULL, 'Cleo', 203, 204),          -- Hija de Leo y Maximus
(206, 4, 6, '2022-06-30', NULL, 'Samson', NULL, NULL),      -- Padre
(207, 4, 6, '2022-09-05', NULL, 'Titan', NULL, NULL),       -- Padre
(208, 4, 6, '2023-03-02', NULL, 'Rocky',  NULL,  NULL),         -- Hija de Samson y Titan
(209, 5, 6, '2022-07-15', NULL, 'Storm', NULL, NULL),       -- Padre
(210, 5, 6, '2022-09-03', NULL, 'Rex', NULL, NULL),         -- Padre
(211, 5, 6, '2023-02-10', NULL, 'Blaze', 209, 210),         -- Hija de Storm y Rex
(212, 6, 6, '2022-08-20', NULL, 'Milo', NULL, NULL),        -- Padre
(213, 6, 6, '2022-10-18', NULL, 'Leo', NULL, NULL),         -- Padre
(214, 6, 6, '2023-04-12', NULL, 'Charlie', 212, 213),       -- Hija de Milo y Leo
(215, 7, 6, '2022-09-22', NULL, 'Max', NULL, NULL),         -- Padre
(216, 7, 6, '2022-11-07', NULL, 'Rocky', NULL, NULL),       -- Padre
(217, 7, 6, '2023-01-15', NULL, 'Bella', 215, 216),         -- Hija de Max y Rocky
(218, 8, 6, '2022-06-27', NULL, 'Cleo', NULL, NULL),        -- Padre
(219, 8, 6, '2022-09-04', NULL, 'Sadie', NULL, NULL),       -- Padre
(220, 8, 6, '2023-03-10', NULL, 'Luna', 218, 219),          -- Hija de Cleo y Sadie
(221, 9, 6, '2022-07-23', NULL, 'Tommy', NULL, NULL),       -- Padre
(222, 9, 6, '2022-09-30', NULL, 'Zara', NULL, NULL),        -- Padre
(223, 9, 6, '2023-04-18', NULL, 'Rex',  NULL,  NULL),           -- Hija de Tommy y Zara
(224, 10, 6, '2022-08-02', NULL, 'Rocky', NULL, NULL),      -- Padre
(225, 10, 6, '2022-10-17', NULL, 'Buddy', NULL, NULL),      -- Padre
(226, 10, 6, '2023-01-28', NULL, 'Maximus', 224, 225),      -- Hija de Rocky y Buddy
(227, 11, 6, '2022-07-05', NULL, 'Rex', NULL, NULL),        -- Padre
(228, 11, 6, '2022-09-21', NULL, 'Maverick', NULL, NULL),   -- Padre
(229, 11, 6, '2023-03-14', NULL, 'Sadie', 227, 228),        -- Hija de Rex y Maverick
(230, 12, 6, '2022-08-12', NULL, 'Thor', NULL, NULL),       -- Padre
(231, 12, 6, '2022-11-15', NULL, 'Cleo', NULL, NULL),       -- Padre
(232, 12, 6, '2023-04-11', NULL, 'Toby',  NULL,  NULL),         -- Hija de Thor y Cleo
(233, 13, 6, '2022-07-19', NULL, 'Sadie', NULL, NULL),      -- Padre
(234, 1, 7, '2022-05-10', NULL, 'Finnian', NULL, NULL),      -- Padre
(235, 1, 7, '2022-08-22', NULL, 'Zephyr', NULL, NULL),       -- Padre
(236, 1, 7, '2023-01-18', NULL, 'Caspian', 234, 235),        -- Hijo de Finnian y Zephyr
(237, 2, 7, '2022-06-14', NULL, 'Orion', NULL, NULL),        -- Padre
(238, 2, 7, '2022-09-12', NULL, 'Luna', NULL, NULL),         -- Padre
(239, 2, 7, '2023-02-03', NULL, 'Astra', 237, 238),          -- Hija de Orion y Luna
(240, 3, 7, '2022-07-28', NULL, 'Atlas', NULL, NULL),        -- Padre
(241, 3, 7, '2022-11-15', NULL, 'Echo', NULL, NULL),         -- Padre
(242, 3, 7, '2023-03-20', NULL, 'Nova', 240, 241),           -- Hija de Atlas y Echo
(243, 4, 7, '2022-09-10', NULL, 'Zeus', NULL, NULL),         -- Padre
(244, 4, 7, '2022-10-20', NULL, 'Celeste', NULL, NULL),      -- Padre
(245, 4, 7, '2023-04-05', NULL, 'Nyx',  NULL,  NULL),            -- Hija de Zeus y Celeste
(246, 5, 7, '2022-05-23', NULL, 'Cyra', NULL, NULL),         -- Padre
(247, 5, 7, '2022-08-17', NULL, 'Sol', NULL, NULL),          -- Padre
(248, 5, 7, '2023-02-28', NULL, 'Aurora', 246, 247),         -- Hija de Cyra y Sol
(249, 6, 7, '2022-07-11', NULL, 'Lyra', NULL, NULL),         -- Padre
(250, 6, 7, '2022-10-30', NULL, 'Stellar', NULL, NULL),      -- Padre
(251, 6, 7, '2023-04-16', NULL, 'Orla', 249, 250),           -- Hija de Lyra y Stellar
(252, 7, 7, '2022-06-02', NULL, 'Phoenix', NULL, NULL),      -- Padre
(253, 7, 7, '2022-09-29', NULL, 'Juno', NULL, NULL),         -- Padre
(254, 7, 7, '2023-03-10', NULL, 'Vega',  NULL,  NULL),           -- Hija de Phoenix y Juno
(255, 8, 7, '2022-08-14', NULL, 'Electra', NULL, NULL),      -- Padre
(256, 8, 7, '2022-12-18', NULL, 'Talon', NULL, NULL),        -- Padre
(257, 8, 7, '2023-05-01', NULL, 'Oberon', 255, 256),         -- Hijo de Electra y Talon
(258, 9, 7, '2022-09-07', NULL, 'Galadriel', NULL, NULL),    -- Padre
(259, 9, 7, '2022-10-25', NULL, 'Valor', NULL, NULL),        -- Padre
(260, 9, 7, '2023-03-22', NULL, 'Eira',  NULL,  NULL),           -- Hija de Galadriel y Valor
(261, 10, 7, '2022-05-19', NULL, 'Niamh', NULL, NULL),       -- Padre
(262, 10, 7, '2022-08-13', NULL, 'Ragnar', NULL, NULL),      -- Padre
(263, 10, 7, '2023-01-26', NULL, 'Freya', 261, 262),         -- Hija de Niamh y Ragnar
(264, 11, 7, '2022-07-02', NULL, 'Odin', NULL, NULL),        -- Padre
(265, 11, 7, '2022-09-11', NULL, 'Sable', NULL, NULL),       -- Padre
(266, 11, 7, '2023-04-03', NULL, 'Astrid',  NULL,  NULL),        -- Hija de Odin y Sable
(267, 1, 8, '2022-06-20', NULL, 'Arwen', NULL, NULL),          -- Padre
(268, 1, 8, '2022-09-30', NULL, 'Faramir', NULL, NULL),        -- Padre
(269, 1, 8, '2023-02-05', NULL, 'Lorien', 267, 268),           -- Hijo de Arwen y Faramir
(270, 2, 8, '2022-05-15', NULL, 'Gala', NULL, NULL),      -- Padre
(271, 2, 8, '2022-08-29', NULL, 'Beren', NULL, NULL),          -- Padre
(272, 2, 8, '2023-01-17', NULL, 'Eowyn', 270, 271),            -- Hija de Galadriel y Beren
(273, 3, 8, '2022-04-12', NULL, 'Eomer', NULL, NULL),          -- Padre
(274, 3, 8, '2022-11-20', NULL, 'Elanor', NULL, NULL),         -- Padre
(275, 3, 8, '2023-03-11', NULL, 'Isildur',  NULL,  NULL),          -- Hijo de Eomer y Elanor
(276, 4, 8, '2022-07-14', NULL, 'Samwise', NULL, NULL),        -- Padre
(277, 4, 8, '2022-12-02', NULL, 'Rosie', NULL, NULL),          -- Padre
(278, 4, 8, '2023-04-09', NULL, 'Frodo', 276, 277),            -- Hijo de Samwise y Rosie
(279, 5, 8, '2022-05-23', NULL, 'Theoden', NULL, NULL),        -- Padre
(280, 5, 8, '2022-09-19', NULL, 'Haleth', NULL, NULL),         -- Padre
(281, 5, 8, '2023-02-22', NULL, 'Morwen', 279, 280),           -- Hija de Theoden y Haleth
(282, 6, 8, '2022-06-01', NULL, 'Radagast', NULL, NULL),       -- Padre
(283, 6, 8, '2022-10-27', NULL, 'Anarion', NULL, NULL),        -- Padre
(284, 6, 8, '2023-03-30', NULL, 'Celebrimbor', 282, 283),      -- Hijo de Radagast y Anarion
(285, 7, 8, '2022-05-17', NULL, 'Denethor', NULL, NULL),       -- Padre
(286, 7, 8, '2022-08-05', NULL, 'Imrahil', NULL, NULL),        -- Padre
(287, 7, 8, '2023-01-28', NULL, 'Telchar',  NULL,  NULL),          -- Hijo de Denethor y Imrahil
(288, 8, 8, '2022-07-09', NULL, 'Maedhros', NULL, NULL),       -- Padre
(289, 8, 8, '2022-11-21', NULL, 'Thranduil', NULL, NULL),      -- Padre
(290, 8, 8, '2023-04-12', NULL, 'Caranthir',  NULL,  NULL),        -- Hijo de Maedhros y Thranduil
(291, 9, 8, '2022-06-10', NULL, 'Nienna', NULL, NULL),         -- Padre
(292, 9, 8, '2022-10-18', NULL, 'Melian', NULL, NULL),         -- Padre
(293, 9, 8, '2023-03-06', NULL, 'Tilion', 291, 292),           -- Hijo de Nienna y Melian
(294, 10, 8, '2022-04-20', NULL, 'Ungoliant', NULL, NULL),     -- Padre
(295, 10, 8, '2022-07-22', NULL, 'Varda', NULL, NULL),         -- Padre
(296, 10, 8, '2023-02-18', NULL, 'Elbereth',  NULL,  NULL),        -- Hija de Ungoliant y Varda
(297, 11, 8, '2022-06-05', NULL, 'Mandos', NULL, NULL),        -- Padre
(298, 11, 8, '2022-11-08', NULL, 'Manwe', NULL, NULL),         -- Padre
(299, 11, 8, '2023-03-15', NULL, 'Este', 297, 298),            -- Hijo de Mandos y Manwe
(300, 12, 8, '2022-08-15', NULL, 'Feanor', NULL, NULL),        -- Padre
(301, 12, 8, '2022-12-01', NULL, 'Namo', NULL, NULL),          -- Padre
(302, 12, 8, '2023-05-05', NULL, 'Makar', 300, 301),           -- Hijo de Feanor y Namo
(303, 13, 8, '2022-09-19', NULL, 'Aldarion', NULL, NULL),      -- Padre
(304, 13, 8, '2022-12-20', NULL, 'Earendil', NULL, NULL),      -- Padre
(305, 13, 8, '2023-02-14', NULL, 'Voronwe',  NULL,  NULL),         -- Hijo de Aldarion y Earendil
(306, 14, 8, '2022-06-26', NULL, 'Ecthelion', NULL, NULL),     -- Padre
(307, 14, 8, '2022-09-28', NULL, 'Finduilas', NULL, NULL),     -- Padre
(308, 14, 8, '2023-01-06', NULL, 'Rian',  NULL, NULL),            -- Hija de Ecthelion y Finduilas
(309, 15, 8, '2022-10-03', NULL, 'Aradan', NULL, NULL),        -- Padre
(310, 15, 8, '2022-12-30', NULL, 'Turin', NULL, NULL),         -- Padre
(311, 15, 8, '2023-04-01', NULL, 'Hurin', 309, 310),           -- Hijo de Aradan y Turin
(312, 16, 8, '2022-06-23', NULL, 'Indis', NULL, NULL),         -- Padre
(313, 16, 8, '2022-09-17', NULL, 'Anaire', NULL, NULL),        -- Padre
(314, 16, 8, '2023-01-19', NULL, 'Findis',  NULL,  NULL),          -- Hija de Indis y Anaire
(315, 17, 8, '2022-05-31', NULL, 'Laurelin', NULL, NULL),      -- Padre
(316, 17, 8, '2022-08-21', NULL, 'Telperion', NULL, NULL),     -- Padre
(317, 17, 8, '2023-02-10', NULL, 'Yavanna', 315, 316),         -- Hija de Laurelin y Telperion
(318, 1, 9, '2022-05-18', NULL, 'Anduin', NULL, NULL),          -- Padre
(319, 1, 9, '2022-10-09', NULL, 'Beleg', NULL, NULL),           -- Padre
(320, 1, 9, '2023-02-13', NULL, 'Tuor', 318, 319),              -- Hijo de Anduin y Beleg
(321, 2, 9, '2022-07-30', NULL, 'Aerin', NULL, NULL),           -- Padre
(322, 2, 9, '2022-12-04', NULL, 'Glorfindel', NULL, NULL),      -- Padre
(323, 2, 9, '2023-03-20', NULL, 'Ohtar', 321, 322),             -- Hijo de Aerin y Glorfindel
(324, 3, 9, '2022-08-15', NULL, 'Amras', NULL, NULL),           -- Padre
(325, 3, 9, '2022-11-28', NULL, 'Amdir', NULL, NULL),           -- Padre
(326, 3, 9, '2023-01-25', NULL, 'Haldir',  NULL,  NULL),            -- Hijo de Amras y Amdir
(327, 4, 9, '2022-04-10', NULL, 'Voronwe', NULL, NULL),         -- Padre
(328, 4, 9, '2022-10-22', NULL, 'Saeros', NULL, NULL),          -- Padre
(329, 4, 9, '2023-02-15', NULL, 'Ancalagon', 327, 328),         -- Hijo de Voronwe y Saeros
(330, 5, 9, '2022-09-19', NULL, 'Gilraen', NULL, NULL),         -- Padre
(331, 5, 9, '2022-11-07', NULL, 'Gildor', NULL, NULL),          -- Padre
(332, 5, 9, '2023-04-01', NULL, 'Mithrandir', 330, 331),        -- Hijo de Gilraen y Gildor
(333, 6, 9, '2022-06-08', NULL, 'Brandir', NULL, NULL),         -- Padre
(334, 6, 9, '2022-09-21', NULL, 'Meneldor', NULL, NULL),        -- Padre
(335, 6, 9, '2023-03-18', NULL, 'Valacar', 333, 334),           -- Hijo de Brandir y Meneldor
(336, 7, 9, '2022-08-24', NULL, 'Sador', NULL, NULL),           -- Padre
(337, 1, 10, '2022-03-11', NULL, 'Celeborn', NULL, NULL),       -- Padre
(338, 1, 10, '2022-07-13', NULL, 'Galathil', NULL, NULL),       -- Padre
(339, 1, 10, '2023-01-05', NULL, 'Nimloth',  NULL,  NULL),          -- Hija de Celeborn y Galathil
(340, 2, 10, '2022-04-17', NULL, 'Thranduil', NULL, NULL),      -- Padre
(341, 2, 10, '2022-12-25', NULL, 'Aldarion', NULL, NULL),       -- Padre
(342, 2, 10, '2023-02-14', NULL, 'Ecthelion', 340, 341),        -- Hijo de Thranduil y Aldarion
(343, 3, 10, '2022-05-01', NULL, 'Beorn', NULL, NULL),          -- Padre
(344, 3, 10, '2022-09-19', NULL, 'Cirdan', NULL, NULL),         -- Padre
(345, 3, 10, '2023-03-21', NULL, 'Voronwë', 343, 344),          -- Hijo de Beorn y Cirdan
(346, 4, 10, '2022-06-23', NULL, 'Eldacar', NULL, NULL),        -- Padre
(347, 4, 10, '2022-11-04', NULL, 'Gwindor', NULL, NULL),        -- Padre
(348, 5, 10, '2023-01-10', NULL, 'Mablung', NULL, NULL),        -- Padre
(349, 5, 10, '2023-02-18', NULL, 'Forlong', NULL, NULL),        -- Padre
(350, 6, 10, '2023-04-03', NULL, 'Angbor', NULL, NULL);         -- Padre
-- -----------------------------------------------------
-- Tabla Traslado
-- -----------------------------------------------------
CREATE TABLE Traslado (
    ID_Traslado INT AUTO_INCREMENT PRIMARY KEY,
    ID_Ejemplar INT NOT NULL,
    ID_ZoologicoOrigen INT NOT NULL,
    ID_ZoologicoDestino INT NOT NULL,
    Proposito VARCHAR(255),
    Permisos TEXT,
    Finicio DATE,
    Ffin DATE,
    FOREIGN KEY (ID_Ejemplar) REFERENCES Ejemplar(ID_Ejemplar) ON DELETE CASCADE,
    FOREIGN KEY (ID_ZoologicoOrigen) REFERENCES Zoologico(ID_Zoo) ON DELETE CASCADE,
    FOREIGN KEY (ID_ZoologicoDestino) REFERENCES Zoologico(ID_Zoo) ON DELETE CASCADE
) ENGINE=InnoDB;
CREATE INDEX idx_id_ejemplar ON Traslado(ID_Ejemplar);
CREATE INDEX idx_id_zoo_origen ON Traslado(ID_ZoologicoOrigen);
CREATE INDEX idx_id_zoo_destino ON Traslado(ID_ZoologicoDestino);


INSERT INTO Traslado (ID_Traslado, ID_Ejemplar, ID_ZoologicoOrigen, ID_ZoologicoDestino, Proposito, Permisos, Finicio, Ffin) VALUES
(1, 5, 1, 2, 'Intercambio para diversificación genética', 'Permiso de intercambio interzoológico #12345', '2023-02-15', '2023-04-20'),
(2, 12, 2, 3, 'Exhibición temporal por aniversario', 'Permiso temporal #54321', '2022-11-10', '2023-01-15'),
(3, 45, 3, 1, 'Tratamiento médico especializado', 'Permiso médico #67890', '2022-08-05', '2022-10-25'),
(4, 89, 4, 5, 'Intercambio de ejemplares', 'Permiso de intercambio #98765', '2023-05-01', '2023-06-30'),
(5, 150, 5, 6, 'Mejorar la representación de especies', 'Permiso de intercambio de especies #55555', '2023-03-12', '2023-07-18'),
(6, 210, 6, 7, 'Exhibición cultural temporal', 'Permiso especial #11223', '2023-04-10', '2023-08-15'),
(7, 275, 7, 8, 'Programa de intercambio', 'Permiso de intercambio #55678', '2022-09-05', '2023-01-20'),
(8, 315, 8, 9, 'Educación y sensibilización ambiental', 'Permiso de sensibilización #99012', '2022-06-25', '2023-02-28'),
(9, 325, 9, 10, 'Incrementar diversidad en la exhibición', 'Permiso de transferencia #33445', '2022-12-01', '2023-04-14'),
(10, 100, 10, 1, 'Investigación en comportamiento animal', 'Permiso de investigación #66554', '2023-01-10', '2023-05-16'),
(11, 18, 1, 4, 'Intercambio para proyecto educativo', 'Permiso de proyecto #88776', '2022-07-15', '2022-11-10'),
(12, 25, 2, 5, 'Programa de conservación conjunto', 'Permiso de conservación #99887', '2022-09-20', '2022-12-30'),
(13, 43, 3, 6, 'Rehabilitación en instalaciones especializadas', 'Permiso de rehabilitación #44532', '2022-11-12', '2023-02-17'),
(14, 65, 4, 7, 'Exhibición temporal por festividades locales', 'Permiso temporal #12367', '2022-05-14', '2022-07-20'),
(15, 88, 5, 9, 'Diversificación genética', 'Permiso de intercambio #97845', '2023-02-22', '2023-06-30'),
(16, 143, 6, 10, 'Mejorar representación en exhibición de aves', 'Permiso de transferencia #11234', '2023-01-25', '2023-03-15'),
(17, 180, 7, 2, 'Rotación en exhibición para evitar estrés', 'Permiso de rotación #54673', '2022-10-10', '2023-02-01'),
(18, 250, 8, 3, 'Reproducción asistida', 'Permiso especial de reproducción #11298', '2023-06-01', '2023-10-15'),
(19, 270, 9, 5, 'Colaboración en conservación', 'Permiso de colaboración #66442', '2023-03-08', '2023-09-14'),
(20, 280, 10, 7, 'Participación en programa educativo', 'Permiso educativo #99009', '2023-02-05', '2023-06-18'),
(21, 120, 1, 8, 'Exposición en festividad anual', 'Permiso de festividad #77554', '2022-09-13', '2023-01-20'),
(22, 230, 2, 9, 'Intercambio entre zoológicos para diversidad', 'Permiso de intercambio #11331', '2022-11-17', '2023-02-25'),
(23, 125, 3, 4, 'Exhibición especial de especies de felinos', 'Permiso especial #88532', '2023-05-06', '2023-08-01'),
(24, 140, 4, 10, 'Rehabilitación temporal', 'Permiso de rehabilitación #99856', '2023-02-18', '2023-04-28'),
(25, 160, 5, 1, 'Intercambio para asegurar diversidad genética', 'Permiso de conservación #22278', '2022-10-25', '2023-01-29'),
(26, 178, 6, 2, 'Reproducción en instalaciones adecuadas', 'Permiso de reproducción #33449', '2022-08-22', '2022-12-18'),
(27, 195, 7, 3, 'Conservar y estudiar comportamiento', 'Permiso de conservación #44576', '2023-04-13', '2023-08-10'),
(28, 206, 8, 6, 'Rotación en exhibición para bienestar animal', 'Permiso de bienestar #55591', '2022-12-02', '2023-03-15'),
(29, 225, 9, 4, 'Intercambio temporal para festividades', 'Permiso de festividad #66789', '2023-03-05', '2023-05-10'),
(30, 245, 10, 5, 'Exhibición temporal de especies africanas', 'Permiso especial #77845', '2023-05-14', '2023-09-12'),
(31, 310, 1, 6, 'Intercambio para diversificación de especies', 'Permiso de intercambio #11998', '2022-07-05', '2022-12-11'),
(32, 75, 2, 7, 'Investigación en hábitos alimenticios', 'Permiso de investigación #33567', '2023-01-20', '2023-06-03'),
(33, 93, 3, 8, 'Estudio de adaptación en diferentes hábitats', 'Permiso de adaptación #44122', '2023-02-18', '2023-05-23'),
(34, 202, 4, 9, 'Rehabilitación por problemas de salud', 'Permiso de salud #55645', '2023-04-25', '2023-08-30'),
(35, 280, 5, 10, 'Conservación y reproducción asistida', 'Permiso de conservación #66775', '2022-09-15', '2023-01-29');

-- -----------------------------------------------------
-- Tabla HistorialMedico
-- -----------------------------------------------------
CREATE TABLE HistorialMedico (
    ID_HistorialMedico INT  AUTO_INCREMENT PRIMARY KEY,
    ID_Ejemplar INT NOT NULL,
    Fecha DATE,
    Diagnostico TEXT,
    Tratamiento TEXT,
    Veterinario VARCHAR(60),
    Observaciones TEXT,
    FOREIGN KEY (ID_Ejemplar) REFERENCES Ejemplar(ID_Ejemplar) ON DELETE CASCADE
) ENGINE=InnoDB;
CREATE INDEX idx_id_ejemplar_historial ON HistorialMedico(ID_Ejemplar);


INSERT INTO HistorialMedico (ID_HistorialMedico, ID_Ejemplar, Fecha, Diagnostico, Tratamiento, Veterinario, Observaciones) VALUES
(1, 5, '2023-02-10', 'Fractura en ala izquierda', 'Inmovilización y suplemento de calcio', 'Dr. Ana Pérez', 'Recuperación satisfactoria, evitar vuelos altos'),
(2, 12, '2023-03-15', 'Infección respiratoria', 'Antibióticos y nebulización', 'Dr. Luis Herrera', 'Responde bien al tratamiento'),
(3, 18, '2022-12-01', 'Parásitos intestinales', 'Desparasitante administrado oralmente', 'Dra. Carla Gómez', 'Realizar seguimiento en un mes'),
(4, 25, '2023-01-10', 'Deshidratación leve', 'Hidratación con suero intravenoso', 'Dr. Roberto López', 'Monitorizar estado cada 8 horas'),
(5, 30, '2023-05-02', 'Infección en la piel', 'Ungüento antibiótico', 'Dra. Julia Fernández', 'Mejora después de una semana'),
(6, 35, '2023-07-14', 'Desgaste en colmillos', 'Revisión y ajuste dietético', 'Dr. Fernando Ruiz', 'Se recomienda revisión dental cada 6 meses'),
(7, 42, '2022-11-18', 'Fractura en pata derecha', 'Inmovilización y reposo', 'Dra. Marta Salinas', 'Evitar actividad física por 3 semanas'),
(8, 50, '2023-04-04', 'Infección ocular', 'Colirio antibiótico', 'Dr. Mario Rodríguez', 'Mejora evidente en dos días'),
(9, 55, '2023-06-10', 'Herida en el lomo', 'Limpieza y desinfección diaria', 'Dra. Silvia Morales', 'Sutura en buen estado'),
(10, 60, '2023-01-18', 'Pérdida de peso', 'Suplementación con proteínas', 'Dr. Pedro García', 'Monitorear alimentación'),
(11, 65, '2022-08-12', 'Deshidratación por calor', 'Suero oral y sombra adicional', 'Dra. Lucía Díaz', 'Revisar temperaturas del hábitat'),
(12, 70, '2023-02-22', 'Fractura en ala derecha', 'Reposo y vitaminas', 'Dr. José Velasco', 'Observación constante'),
(13, 75, '2023-03-05', 'Infección respiratoria leve', 'Nebulización y antibióticos', 'Dr. Francisco Ayala', 'Evitar exposición al frío'),
(14, 80, '2023-04-18', 'Infección de oído', 'Antibiótico y analgésico', 'Dra. Paula Estrada', 'Revisar en 10 días'),
(15, 85, '2023-02-14', 'Gastritis', 'Dieta blanda y control de estrés', 'Dr. Antonio Vega', 'Evitar alimentos ácidos'),
(16, 90, '2023-03-24', 'Fractura en cola', 'Reposo e inmovilización', 'Dr. Adrián Méndez', 'Buena recuperación'),
(17, 95, '2023-01-29', 'Desgaste en uñas', 'Limpieza y monitoreo', 'Dr. Ignacio Campos', 'Recorte en 3 semanas'),
(18, 100, '2023-02-28', 'Absceso en pata izquierda', 'Drenaje y antibiótico', 'Dra. Teresa Villar', 'Revisión en 5 días'),
(19, 105, '2023-04-15', 'Fractura en pico', 'Inmovilización parcial', 'Dr. Miguel Suárez', 'Evitar estrés durante el tratamiento'),
(20, 110, '2023-06-02', 'Parásitos en piel', 'Baño medicado', 'Dra. Sara Bautista', 'Repetir tratamiento en 15 días'),
(21, 115, '2022-12-05', 'Problema digestivo', 'Dieta blanda y probióticos', 'Dr. Juan Vargas', 'Observación de excrementos'),
(22, 120, '2023-01-15', 'Fractura en ala izquierda', 'Reposo y suplemento de calcio', 'Dr. Carlos Pérez', 'Evitar vuelos altos'),
(23, 125, '2023-03-20', 'Infección respiratoria', 'Nebulización y antibióticos', 'Dr. Javier Romero', 'Aislamiento preventivo'),
(24, 130, '2023-05-10', 'Luxación en pata derecha', 'Inmovilización y reposo', 'Dra. Claudia Torres', 'Buena respuesta al tratamiento'),
(25, 135, '2023-02-25', 'Anemia', 'Suplementación de hierro', 'Dr. Emilio Navarro', 'Control de dieta'),
(26, 140, '2022-09-15', 'Problema dental', 'Limpieza dental', 'Dra. Sonia Ledesma', 'Revisión en un mes'),
(27, 145, '2023-01-19', 'Fractura en costilla', 'Reposo y antiinflamatorios', 'Dr. Mauricio León', 'Control de dolor efectivo'),
(28, 150, '2023-04-08', 'Infección ocular', 'Colirio antibiótico', 'Dra. Gabriela Ortega', 'Revisión en una semana'),
(29, 155, '2023-06-13', 'Deshidratación leve', 'Hidratación intravenosa', 'Dr. Julio Campos', 'Monitorear durante 24 horas'),
(30, 160, '2023-02-21', 'Parásitos intestinales', 'Desparasitante oral', 'Dra. Mariela Espinosa', 'Revisión en un mes'),
(31, 165, '2023-03-29', 'Herida en cuello', 'Limpieza y sutura', 'Dr. Alberto Quintero', 'Curación satisfactoria'),
(32, 170, '2022-07-22', 'Luxación en pata delantera', 'Inmovilización', 'Dr. Luis Mendoza', 'Revisión en dos semanas'),
(33, 175, '2023-05-22', 'Infección respiratoria', 'Nebulización y antibióticos', 'Dra. Daniela López', 'Monitoreo continuo'),
(34, 180, '2023-04-11', 'Herida en ala derecha', 'Desinfección y vendaje', 'Dra. Andrea Rodríguez', 'Evolución favorable'),
(35, 185, '2022-11-28', 'Anemia', 'Suplementación con hierro', 'Dr. Óscar Gómez', 'Control semanal'),
(36, 190, '2023-03-08', 'Luxación en pata trasera', 'Inmovilización', 'Dra. Verónica Morales', 'Evitar movimientos bruscos'),
(37, 195, '2023-06-25', 'Absceso en pata izquierda', 'Drenaje y antibiótico', 'Dr. Ramón Ortiz', 'Revisión en 5 días'),
(38, 200, '2022-08-10', 'Gripe aviar', 'Aislamiento y tratamiento antiviral', 'Dra. Inés Álvarez', 'Evitar contacto con otros ejemplares'),
(39, 205, '2023-04-15', 'Infección en piel', 'Antibiótico tópico', 'Dr. Enrique Luna', 'Mejora notable en 3 días'),
(40, 210, '2023-02-27', 'Fractura en pata trasera', 'Inmovilización y vitaminas', 'Dra. Beatriz Blanco', 'Reposo absoluto'),
(41, 215, '2023-05-30', 'Infección respiratoria', 'Antibióticos y control de temperatura', 'Dr. Jorge Villanueva', 'Progreso positivo'),
(42, 220, '2023-03-16', 'Problema digestivo', 'Dieta controlada y probióticos', 'Dr. Hugo Salcedo', 'Recuperación total'),
(43, 225, '2022-11-20', 'Fractura en ala izquierda', 'Inmovilización y suplemento', 'Dra. Miriam Sánchez', 'Evitar estrés adicional'),
(44, 230, '2023-02-02', 'Desgaste en colmillos', 'Revisión dental y ajuste dietético', 'Dr. Ernesto Calderón', 'Seguimiento en 6 meses'),
(45, 235, '2023-04-21', 'Parásitos externos', 'Baño medicado', 'Dr. Iván Trejo', 'Repetir tratamiento en 15 días'),
(46, 240, '2023-06-14', 'Herida en pata derecha', 'Limpieza y vendaje', 'Dra. Alejandra Silva', 'Sutura en buen estado'),
(47, 245, '2023-03-04', 'Infección urinaria', 'Antibiótico oral', 'Dr. Salvador Figueroa', 'Evitar deshidratación'),
(48, 250, '2023-01-25', 'Gastritis', 'Dieta blanda y probióticos', 'Dr. Armando Téllez', 'Evitar alimentos irritantes'),
(49, 255, '2022-09-09', 'Herida en lomo', 'Limpieza y desinfección', 'Dra. Patricia Valdez', 'Curación satisfactoria'),
(50, 260, '2023-04-17', 'Infección ocular', 'Colirio antibiótico', 'Dr. Gonzalo Medina', 'Revisión en una semana'),
(51, 265, '2023-03-11', 'Fractura en ala izquierda', 'Inmovilización y suplemento de calcio', 'Dr. Francisco Vargas', 'Evitar vuelos hasta nueva revisión'),
(52, 270, '2022-11-12', 'Parásitos intestinales', 'Desparasitante administrado oralmente', 'Dra. Cecilia Álvarez', 'Revisión en tres semanas'),
(53, 275, '2023-05-30', 'Infección respiratoria', 'Nebulización y antibióticos', 'Dr. Mario Herrera', 'Progreso positivo'),
(54, 280, '2023-04-18', 'Gripe aviar', 'Aislamiento y tratamiento antiviral', 'Dr. Julián Muñoz', 'Evitar contacto con otros ejemplares'),
(55, 285, '2022-12-08', 'Deshidratación por estrés', 'Hidratación intravenosa y control de estrés', 'Dr. Carlos López', 'Estabilización en 24 horas'),
(56, 290, '2023-06-15', 'Fractura en pata trasera', 'Inmovilización y reposo absoluto', 'Dra. Sonia Quintero', 'Revisión semanal'),
(57, 295, '2023-07-20', 'Infección ocular', 'Colirio antibiótico', 'Dr. Ernesto Montalvo', 'Mejoría visible en tres días'),
(58, 300, '2023-02-15', 'Problemas digestivos', 'Dieta blanda y probióticos', 'Dra. Laura Morales', 'Control diario'),
(59, 305, '2022-10-25', 'Absceso en pata derecha', 'Drenaje y antibióticos', 'Dr. Fernando Mejía', 'Control en una semana'),
(60, 310, '2023-01-14', 'Luxación en pata izquierda', 'Inmovilización y descanso', 'Dra. Marcela Ortiz', 'Evitar movimientos bruscos'),
(61, 315, '2023-03-30', 'Parásitos externos', 'Baño medicado', 'Dra. Susana Romero', 'Repetir tratamiento en dos semanas'),
(62, 320, '2023-04-01', 'Fractura en pico', 'Inmovilización parcial', 'Dr. Arturo Esquivel', 'Evitar estrés'),
(63, 325, '2023-06-21', 'Deshidratación leve', 'Suero oral y monitoreo', 'Dr. Roberto Hernández', 'Evitar exposición prolongada al sol'),
(64, 330, '2023-05-12', 'Herida en cuello', 'Desinfección y vendaje', 'Dra. Miriam Flores', 'Buena cicatrización observada'),
(65, 335, '2022-09-19', 'Infección urinaria', 'Antibióticos orales', 'Dr. Eduardo Cano', 'Control de líquidos recomendado'),
(66, 340, '2023-02-09', 'Herida en lomo', 'Limpieza diaria y vendaje', 'Dra. Gabriela Ávila', 'Revisión en 5 días'),
(67, 345, '2023-04-19', 'Desgaste en dientes', 'Ajuste dietético y control dental', 'Dr. Santiago Nieto', 'Revisión cada seis meses'),
(68, 150, '2023-06-05', 'Problemas respiratorios', 'Antibióticos y control de humedad', 'Dra. Alicia Vargas', 'Mejora progresiva observada'),
(69, 265, '2023-05-10', 'Gastritis', 'Dieta blanda y antiácidos', 'Dr. Óscar Monroy', 'Control semanal'),
(70, 170, '2022-11-23', 'Infección en la piel', 'Ungüento antibiótico y vendaje', 'Dra. Irene Aranda', 'Revisión en 3 días'),
(71, 260, '2023-02-28', 'Fractura en ala derecha', 'Inmovilización y reposo', 'Dr. Germán Herrera', 'Evitar vuelos altos'),
(72, 210, '2023-03-05', 'Parásitos en piel', 'Baño medicado', 'Dra. Laura Gómez', 'Control en 10 días'),
(73, 230, '2023-01-17', 'Absceso en pata trasera', 'Drenaje y antibiótico tópico', 'Dr. Martín Larios', 'Evitar contacto con el suelo sucio'),
(74, 220, '2023-04-10', 'Luxación en pata delantera', 'Inmovilización y descanso', 'Dra. Paula Navarro', 'Buena recuperación observada'),
(75, 215, '2023-02-25', 'Infección ocular', 'Colirio antibiótico', 'Dr. Jacobo García', 'Mejoría en 48 horas'),
(76, 180, '2023-06-03', 'Infección respiratoria leve', 'Antibióticos orales', 'Dr. Álvaro Vázquez', 'Aislamiento preventivo'),
(77, 145, '2022-10-19', 'Problema dental', 'Limpieza y ajuste de dieta', 'Dra. Marina Carrillo', 'Revisión en seis meses'),
(78, 305, '2023-03-11', 'Deshidratación', 'Hidratación intravenosa', 'Dr. Octavio Carranza', 'Estabilización en 48 horas'),
(79, 245, '2023-05-15', 'Fractura en costilla', 'Reposo y antiinflamatorios', 'Dra. Natalia Téllez', 'Evolución favorable'),
(80, 280, '2023-06-07', 'Luxación en pata trasera', 'Inmovilización y control de dolor', 'Dr. Darío Suárez', 'Revisión en 10 días'),
(81, 325, '2023-04-23', 'Infección de oído', 'Antibióticos y monitoreo', 'Dr. Luis Zepeda', 'Revisión semanal'),
(82, 140, '2023-02-16', 'Problema digestivo', 'Dieta blanda y monitoreo', 'Dra. Eugenia Méndez', 'Monitorear excremento diario'),
(83, 260, '2023-01-30', 'Infección urinaria leve', 'Antibióticos y control de hidratación', 'Dr. Álvaro Márquez', 'Revisión en una semana'),
(84, 235, '2023-03-27', 'Fractura en pata delantera', 'Inmovilización y suplemento de calcio', 'Dr. Sergio Lozano', 'Evitar contacto con superficies duras'),
(85, 125, '2023-02-07', 'Infección ocular', 'Colirio y descanso', 'Dr. Alfredo Salas', 'Mejoría visible en 2 días'),
(86, 275, '2022-09-11', 'Deshidratación moderada', 'Hidratación intravenosa', 'Dr. Ricardo Olivares', 'Monitoreo durante 24 horas'),
(87, 215, '2023-05-05', 'Problemas respiratorios', 'Antibióticos y control de ambiente', 'Dra. Verónica Navarro', 'Mejora notable'),
(88, 330, '2023-04-29', 'Luxación en cola', 'Reposo y control de movimiento', 'Dr. Jaime Quintana', 'Buena recuperación'),
(89, 285, '2023-06-18', 'Absceso en pata derecha', 'Limpieza y antibióticos tópicos', 'Dr. Mario Sandoval', 'Revisión semanal'),
(90, 305, '2023-03-01', 'Fractura en ala izquierda', 'Reposo absoluto y monitoreo', 'Dra. Patricia Zamora', 'Evolución favorable');


-- -----------------------------------------------------
-- Vistas
-- -----------------------------------------------------


-- Vista de Ejemplares por Zoológico
CREATE VIEW Ejemplares_Por_Zoologico AS
SELECT 
    e.ID_Ejemplar,
    e.Nombre AS Nombre_Ejemplar,
    e.Fnacimiento,
    es.Nombre_cientifico AS Especie,
    z.Nombre AS Zoologico
FROM 
    Ejemplar e
JOIN 
    Especie es ON e.ID_Especie = es.ID_Especie
JOIN 
    Zoologico z ON e.ID_Zoo = z.ID_Zoo;


-- Vista de Empleados con Información de Zoológico y Área
CREATE VIEW Empleados_Con_Zoologico_Y_Area AS
SELECT 
    emp.ID_Empleado,
    emp.Nombre,
    emp.Apaterno,
    emp.Amaterno,
    emp.Genero,
    emp.Movil,
    emp.RFC,
    z.Nombre AS Zoologico,
    a.Nombre AS Area
FROM 
    Empleado emp
JOIN 
    Zoologico z ON emp.ID_Zoo = z.ID_Zoo
LEFT JOIN 
    Area a ON emp.ID_Area = a.ID_Area;


-- Vista de Historial Médico de un Ejemplar
CREATE VIEW Vista_Historial_Medico_Ejemplar AS
SELECT 
    e.ID_Ejemplar,
    e.Nombre AS Nombre_Ejemplar,
    e.Fnacimiento,
    h.Fecha AS Fecha_Diagnostico,
    h.Diagnostico,
    h.Tratamiento,
    h.Veterinario
FROM 
    Ejemplar e
JOIN 
    HistorialMedico h ON e.ID_Ejemplar = h.ID_Ejemplar
WHERE 
    h.Fecha = (SELECT MAX(Fecha) FROM HistorialMedico WHERE ID_Ejemplar = e.ID_Ejemplar);

-- Vista de Traslados de Ejemplares entre Zoológicos
CREATE VIEW Vista_Traslados_Ejemplares AS
SELECT 
    t.ID_Traslado,
    e.Nombre AS Ejemplar,
    zo.Nombre AS Zoologico_Origen,
    zd.Nombre AS Zoologico_Destino,
    t.Proposito,
    t.Finicio,
    t.Ffin
FROM 
    Traslado t
JOIN 
    Ejemplar e ON t.ID_Ejemplar = e.ID_Ejemplar
JOIN 
    Zoologico zo ON t.ID_ZoologicoOrigen = zo.ID_Zoo
JOIN 
    Zoologico zd ON t.ID_ZoologicoDestino = zd.ID_Zoo;

-- Vista para obtener el número de empleados por zoológico
CREATE VIEW Empleados_Por_Zoo AS
SELECT z.ID_Zoo, z.Nombre AS Nombre_Zoologico, COUNT(e.ID_Empleado) AS Numero_Empleados
FROM Zoologico z
LEFT JOIN Empleado e ON z.ID_Zoo = e.ID_Zoo
GROUP BY z.ID_Zoo;

-- Vista para obtener el estado de conservación por especie
CREATE VIEW Estado_Conservacion_Especies AS
SELECT s.ID_Especie, s.Nombre_generico, s.Nombre_cientifico, s.Estado_conservacion, 
       e.Nombre AS Ecosistema, COUNT(j.ID_Ejemplar) AS Numero_Ejemplares
FROM Especie s
JOIN Ecosistema e ON s.ID_Ecosistema = e.ID_Ecosistema
LEFT JOIN Ejemplar j ON s.ID_Especie = j.ID_Especie
GROUP BY s.ID_Especie;

-- Vista para obtener un resumen de las actividades por rol
CREATE VIEW Resumen_Actividades_Por_Rol AS
SELECT r.Nombre AS Rol, a.Nombre AS Actividad, a.Descripcion AS Descripcion_Actividad, COUNT(r.ID_Rol) AS Numero_de_Roles
FROM Rol r
JOIN Actividades a ON r.ID_Actividades = a.ID_Actividades
GROUP BY r.ID_Rol;

-- Vista para obtener los ejemplares por ecosistema
CREATE VIEW Ejemplares_Por_Ecosistema AS
SELECT e.Nombre AS Ecosistema, s.Nombre_generico, COUNT(j.ID_Ejemplar) AS Numero_Ejemplares
FROM Ecosistema e
JOIN Especie s ON e.ID_Ecosistema = s.ID_Ecosistema
LEFT JOIN Ejemplar j ON s.ID_Especie = j.ID_Especie
GROUP BY e.ID_Ecosistema, s.ID_Especie;

-- Vista para obtener los ejemplares por zoológico
CREATE VIEW Ejemplares_Por_Zoo AS
SELECT z.Nombre AS Zoologico, s.Nombre_generico AS Especie, COUNT(j.ID_Ejemplar) AS Numero_Ejemplares
FROM Zoologico z
JOIN Ejemplar j ON z.ID_Zoo = j.ID_Zoo
JOIN Especie s ON j.ID_Especie = s.ID_Especie
GROUP BY z.ID_Zoo, s.ID_Especie;


-- -----------------------------------------------------
-- SP
-- -----------------------------------------------------

--Procedimiento para Insertar un Nuevo Ejemplar
DELIMITER //

CREATE PROCEDURE Insertar_Ejemplar(
    IN p_ID_Especie INT,
    IN p_ID_Zoo INT,
    IN p_Fnacimiento DATE,
    IN p_Nombre VARCHAR(60),
    IN p_Madre INT,
    IN p_Padre INT
)
BEGIN
    INSERT INTO Ejemplar (ID_Especie, ID_Zoo, Fnacimiento, Nombre, Madre, Padre)
    VALUES (p_ID_Especie, p_ID_Zoo, p_Fnacimiento, p_Nombre, p_Madre, p_Padre);
END //

DELIMITER ;

--Procedimiento para Actualizar el Estado de Conservación de una Especie
DELIMITER //

CREATE PROCEDURE Actualizar_Estado_Conservacion(
    IN p_ID_Especie INT,
    IN p_Estado_conservacion VARCHAR(30)
)
BEGIN
    UPDATE Especie
    SET Estado_conservacion = p_Estado_conservacion
    WHERE ID_Especie = p_ID_Especie;
END //

DELIMITER ;

--Procedimiento para Registrar un Traslado de Ejemplar
DELIMITER //

CREATE PROCEDURE Registrar_Traslado(
    IN p_ID_Ejemplar INT,
    IN p_ID_ZoologicoOrigen INT,
    IN p_ID_ZoologicoDestino INT,
    IN p_Proposito VARCHAR(255),
    IN p_Finicio DATE,
    IN p_Ffin DATE
)
BEGIN
    INSERT INTO Traslado (ID_Ejemplar, ID_ZoologicoOrigen, ID_ZoologicoDestino, Proposito, Finicio, Ffin)
    VALUES (p_ID_Ejemplar, p_ID_ZoologicoOrigen, p_ID_ZoologicoDestino, p_Proposito, p_Finicio, p_Ffin);
END //

DELIMITER ;

-- Procedimiento para Eliminar un Ejemplar y su Historial Médico
DELIMITER //

CREATE PROCEDURE Eliminar_Ejemplar(
    IN p_ID_Ejemplar INT
)
BEGIN
    DELETE FROM HistorialMedico WHERE ID_Ejemplar = p_ID_Ejemplar;
    DELETE FROM Ejemplar WHERE ID_Ejemplar = p_ID_Ejemplar;
END //

DELIMITER ;


--Procedimiento para Actualizar Información de un Zoológico
DELIMITER //

CREATE PROCEDURE Actualizar_Zoologico(
    IN p_ID_Zoo INT,
    IN p_Nombre VARCHAR(60),
    IN p_Telefono VARCHAR(60),
    IN p_Direccion TEXT,
    IN p_Organizacion VARCHAR(60)
)
BEGIN
    UPDATE Zoologico
    SET 
        Nombre = p_Nombre,
        Telefono = p_Telefono,
        Direccion = p_Direccion,
        Organizacion = p_Organizacion
    WHERE 
        ID_Zoo = p_ID_Zoo;
END //

DELIMITER ;


-- -----------------------------------------------------
-- Triggers
-- -----------------------------------------------------

--Trigger para Actualizar el Número de Ejemplares de una Especie al Insertar un Nuevo Ejemplar
DELIMITER //

CREATE TRIGGER ActualizarNumerEjemplares
AFTER INSERT ON Ejemplar
FOR EACH ROW
BEGIN
    UPDATE Especie
    SET Numero_Ejemplares = (SELECT COUNT(*) FROM Ejemplar WHERE ID_Especie = NEW.ID_Especie)
    WHERE ID_Especie = NEW.ID_Especie;
END //

DELIMITER ;

--Trigger para Actualizar la Fecha de Muerte de un Ejemplar al Eliminarlo
DELIMITER //

CREATE TRIGGER ActualizarFechaMuerteEjemplar
AFTER DELETE ON Ejemplar
FOR EACH ROW
BEGIN
    UPDATE Ejemplar
    SET Fmuerte = CURDATE()
    WHERE ID_Ejemplar = OLD.ID_Ejemplar;
END //

DELIMITER ;

--Trigger para Generar un Historial Médico Automático al Insertar un Ejemplar
DELIMITER //

CREATE TRIGGER GenerarHistorialMedico
AFTER INSERT ON Ejemplar
FOR EACH ROW
BEGIN
    INSERT INTO HistorialMedico (ID_Ejemplar, Fecha, Diagnostico, Tratamiento, Veterinario, Observaciones)
    VALUES (NEW.ID_Ejemplar, CURDATE(), 'Examen inicial', 'Sin tratamiento', 'Desconocido', 'Historial inicial');
END //

DELIMITER ;

--Trigger para Notificar un Cambio en el Estado de Conservación de una Especie
DELIMITER //

CREATE TRIGGER NotificarCambioEstadoConservacion
AFTER UPDATE ON Especie
FOR EACH ROW
BEGIN
    IF OLD.Estado_conservacion != NEW.Estado_conservacion THEN
        INSERT INTO LogCambios (Tabla, ID_Registro, Campo, Valor_Anterior, Valor_Nuevo, Fecha)
        VALUES ('Especie', NEW.ID_Especie, 'Estado_conservacion', OLD.Estado_conservacion, NEW.Estado_conservacion, CURDATE());
    END IF;
END //

DELIMITER ;


-- Trigger para actualizar la ubicación de un ejemplar cuando se realiza un traslado
DELIMITER //

CREATE TRIGGER ActualizarUbicacionEjemplarTraslado
AFTER INSERT ON Traslado
FOR EACH ROW
BEGIN
    UPDATE Ejemplar
    SET ID_Zoo = NEW.ID_ZoologicoDestino
    WHERE ID_Ejemplar = NEW.ID_Ejemplar;
END //

DELIMITER ;

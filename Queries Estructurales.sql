
-- -----------------------------------------------------
-- Queries zoologico
-- -----------------------------------------------------
-- Insertar un zoológico
INSERT INTO Zoologico (ID_Zoo, Nombre, Telefono, Direccion, Organizacion)
VALUES (1, 'Zoo Nacional', '5551234567', 'Av. Siempreviva 742', 'Protección Animal Global');

-- Actualizar el nombre de un zoológico
UPDATE Zoologico
SET Nombre = 'Zoológico Nacional de México'
WHERE ID_Zoo = 1;

-- Eliminar un zoológico
DELETE FROM Zoologico
WHERE ID_Zoo = 1;



-- -----------------------------------------------------
-- Queries Empleado
-- -----------------------------------------------------
-- Insertar un empleado
INSERT INTO Empleado (ID_Empleado, ID_Zoo, Nombre, Apaterno, Amaterno, Fnacimiento, Movil, RFC, Estudios, Genero, ID_Area, Jornada)
VALUES (1, 1, 'Juan', 'Pérez', 'López', '1990-05-15', '5512345678', 'JUPE900515HDFRNL03', TRUE, 'Masculino', NULL, 'Matutino');

-- Actualizar el área de un empleado
UPDATE Empleado
SET ID_Area = 1
WHERE ID_Empleado = 1;

-- Eliminar un empleado
DELETE FROM Empleado
WHERE ID_Empleado = 1;


-- -----------------------------------------------------
-- Queries Ejemplar
-- -----------------------------------------------------

-- Insertar un ejemplar
INSERT INTO Ejemplar (ID_Ejemplar, ID_Especie, ID_Zoo, Fnacimiento, Fmuerte, Nombre, Madre, Padre)
VALUES (1, 1, 1, '2020-06-15', NULL, 'Simba', NULL, NULL);

-- Actualizar el nombre de un ejemplar
UPDATE Ejemplar
SET Nombre = 'Simba Jr.'
WHERE ID_Ejemplar = 1;

-- Actualizar la madre y el padre de un ejemplar
UPDATE Ejemplar
SET Madre = 2, Padre = 3
WHERE ID_Ejemplar = 1;

-- Eliminar un ejemplar
DELETE FROM Ejemplar
WHERE ID_Ejemplar = 1;

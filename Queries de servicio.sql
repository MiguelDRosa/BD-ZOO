-- Mostrar ejemplares que no tienen madre o padre asignados
SELECT ID_Ejemplar, Nombre, ID_Especie, ID_Zoo
FROM Ejemplar
WHERE Madre IS NULL OR Padre IS NULL
ORDER BY Nombre;

-- Mostrar los empleados junto con el zoológico en el que trabajan
SELECT E.ID_Empleado, E.Nombre AS Empleado, E.Apaterno, E.Amaterno, Z.Nombre AS Zoologico, E.Jornada
FROM Empleado E
JOIN Zoologico Z ON E.ID_Zoo = Z.ID_Zoo
ORDER BY Z.Nombre, E.Nombre;

-- Mostrar las especies agrupadas por su ecosistema
SELECT EC.Nombre AS Ecosistema, ES.Nombre_generico AS Especie, ES.Nombre_cientifico, ES.Estado_conservacion
FROM Especie ES
JOIN Ecosistema EC ON ES.ID_Ecosistema = EC.ID_Ecosistema
ORDER BY EC.Nombre, ES.Nombre_generico;


-- Listar ejemplares que están vivos en un zoológico específico
SELECT EJ.ID_Ejemplar, EJ.Nombre AS NombreEjemplar, SP.Nombre_generico AS Especie, Z.Nombre AS Zoologico
FROM Ejemplar EJ
JOIN Especie SP ON EJ.ID_Especie = SP.ID_Especie
JOIN Zoologico Z ON EJ.ID_Zoo = Z.ID_Zoo
WHERE EJ.Fmuerte IS NULL
ORDER BY Z.Nombre, SP.Nombre_generico;


-- Mostrar el historial médico completo de un ejemplar
SELECT HM.Fecha, HM.Diagnostico, HM.Tratamiento, HM.Veterinario, HM.Observaciones
FROM HistorialMedico HM
WHERE HM.ID_Ejemplar = 5
ORDER BY HM.Fecha DESC;


-- Listar los zoológicos con la cantidad de ejemplares que tienen
SELECT Z.Nombre AS Zoologico, COUNT(EJ.ID_Ejemplar) AS TotalEjemplares
FROM Zoologico Z
JOIN Ejemplar EJ ON Z.ID_Zoo = EJ.ID_Zoo
GROUP BY Z.ID_Zoo, Z.Nombre
ORDER BY TotalEjemplares DESC;

-- Mostrar todas las especies clasificadas como 'En Peligro'
SELECT Nombre_generico, Nombre_cientifico, Familia, Estado_conservacion
FROM Especie
WHERE Estado_conservacion = 'En Peligro'
ORDER BY Nombre_generico;

-- Mostrar empleados con sus áreas asignadas
SELECT E.Nombre AS Empleado, E.Apaterno, E.Amaterno, A.Nombre AS Area
FROM Empleado E
JOIN Area A ON E.ID_Area = A.ID_Area
ORDER BY A.Nombre, E.Nombre;



-- Listar ejemplares nacidos entre dos fechas específicas
SELECT ID_Ejemplar, Nombre, Fnacimiento, ID_Especie, ID_Zoo
FROM Ejemplar
WHERE Fnacimiento BETWEEN '2020-01-01' AND '2023-12-31'
ORDER BY Fnacimiento DESC;

-- Mostrar zoológicos que han recibido ejemplares a través de traslados
SELECT DISTINCT Z.Nombre AS ZoologicoDestino
FROM Traslado T
JOIN Zoologico Z ON T.ID_ZoologicoDestino = Z.ID_Zoo
ORDER BY Z.Nombre;

-- Listar los zoológicos que más traslados han realizado como origen
SELECT Z.Nombre AS Zoologico, COUNT(T.ID_Traslado) AS TotalTraslados
FROM Traslado T
JOIN Zoologico Z ON T.ID_ZoologicoOrigen = Z.ID_Zoo
GROUP BY Z.ID_Zoo, Z.Nombre
ORDER BY TotalTraslados DESC;

-- Contar empleados agrupados por género
SELECT Genero, COUNT(*) AS TotalEmpleados
FROM Empleado
GROUP BY Genero
ORDER BY TotalEmpleados DESC;

-- Mostrar un listado de especies agrupadas por su familia
SELECT Familia, Nombre_generico, Nombre_cientifico
FROM Especie
ORDER BY Familia, Nombre_generico;

-- Mostrar los 5 empleados con más antigüedad (por fecha de nacimiento) y su edad
SELECT 
    ID_Empleado, 
    Nombre, 
    Apaterno, 
    Amaterno, 
    Fnacimiento,
    TIMESTAMPDIFF(YEAR, Fnacimiento, CURDATE()) AS Edad
FROM Empleado
ORDER BY Fnacimiento ASC
LIMIT 5;

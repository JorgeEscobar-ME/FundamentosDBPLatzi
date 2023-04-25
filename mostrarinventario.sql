SELECT entrenadores.id, entrenadores.nombre, objetos.nombre_objeto, SUM(inventario_objetos.cantidad) as cantidad_total 
FROM entrenadores
LEFT JOIN inventario_objetos
ON entrenadores.id = inventario_objetos.id_dueño
LEFT JOIN objetos
ON inventario_objetos.id_objeto = objetos.id
WHERE objetos.id IS NOT NULL
AND entrenadores.nombre LIKE '%fitz%'
GROUP BY entrenadores.id, entrenadores.nombre, inventario_objetos.id_objeto, objetos.nombre_objeto;
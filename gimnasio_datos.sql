INSERT INTO planes (nombre, duracion_meses, precio)
VALUES
('Mensual', 1, 100000),
('Trimestral', 3, 280000),
('Anual', 12, 1000000);

-- SOCIOS (6, al menos uno sin correo)
INSERT INTO socios (documento, nombre, telefono, correo)
VALUES
(1001, 'Juan Perez', '3001111111', 'juan@gmail.com'),
(1002, 'Ana Gomez', '3002222222', 'ana@gmail.com'),
(1003, 'Carlos Ruiz', '3003333333', 'carlos@gmail.com'),
(1004, 'Maria Torres', '3004444444', 'maria@gmail.com'),
(1005, 'Pedro Sanchez', '3005555555', 'pedro@gmail.com'),
(1006, 'Laura Jimenez', '3006666666', NULL);

-- FICHAS MEDICAS (4)
INSERT INTO ficha_medica (peso, estatura, lesiones, documento_socio)
VALUES
(72.00, 1.75, 'Ninguna', 1001),
(68.00, 1.68, 'Lesion de rodilla', 1002),
(85.00, 1.82, 'Dolor lumbar', 1004),
(60.00, 1.60, 'Esguince de tobillo', 1005);

-- ENTRENADORES (3, Miguel id 3 queda sin clases)
INSERT INTO entrenadores (nombre, especialidad, correo)
VALUES
('Andres Lopez', 'Calistenia', 'andres@gym.com'),
('Paula Rojas', 'Yoga', 'paula@gym.com'),
('Miguel Diaz', 'Funcional', 'miguel@gym.com');

-- CLASES GRUPALES (4, Spinning id 1 con cupo de 2 que quedará lleno)
INSERT INTO clases_grupales (nombre, dia_semana, hora, cupo, id_entrenador)
VALUES
('Spinning', 'Lunes', '06:00:00', 2, 1),
('Yoga Basico', 'Martes', '08:00:00', 4, 2),
('Funcional', 'Miercoles', '18:00:00', 3, 1),
('Yoga Avanzado', 'Viernes', '17:00:00', 5, 2);

-- MEMBRESIAS (8: Juan 1001 renovó, varias ya vencidas, y la id 6 duplicada por error)
INSERT INTO membresias (fecha_inicio, fecha_fin, documento_socio, id_plan)
VALUES
('2025-01-01', '2025-02-01', 1001, 1), -- vencida
('2025-02-02', '2025-03-02', 1001, 1), -- renovación (vencida)
('2026-01-01', '2026-04-01', 1002, 2), -- vencida
('2025-05-01', '2026-05-01', 1003, 3), -- vencida
('2026-02-01', '2026-03-01', 1004, 1), -- vencida
('2026-02-01', '2026-03-01', 1004, 1), -- duplicada por error (id = 6)
('2026-06-01', '2026-09-01', 1005, 2), -- vencida
('2026-07-01', '2027-07-01', 1006, 3); -- vigente

-- INSCRIPCIONES (10: clase 1 llena 2/2, socio 1006 nunca se inscribió)
INSERT INTO inscripciones (fecha_inscripcion, documento_socio, id_clase)
VALUES
('2026-01-10', 1001, 1),
('2026-01-11', 1002, 1),

('2026-01-12', 1001, 2),
('2026-01-13', 1003, 2),
('2026-01-14', 1004, 2),

('2026-01-15', 1002, 3),
('2026-01-16', 1003, 3),
('2026-01-17', 1005, 3),

('2026-01-18', 1004, 4),
('2026-01-19', 1005, 4);
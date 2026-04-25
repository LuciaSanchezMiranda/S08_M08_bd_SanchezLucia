CREATE DATABASE LuciPetNest;
GO

USE LuciPetNest;
GO

DROP TABLE SolicitudCita;

CREATE TABLE SolicitudCita (
    IdSolicitud INT IDENTITY(1,1) PRIMARY KEY,

    NombreCompleto VARCHAR(100) NOT NULL,
    Correo VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    NombreMascota VARCHAR(100) NOT NULL,
    Servicio VARCHAR(100) NOT NULL,
    Mensaje VARCHAR(500) NOT NULL,

    Estado VARCHAR(20) DEFAULT 'Pendiente',

    FechaCreacion DATETIME DEFAULT GETDATE(),
    FechaActualizacion DATETIME NULL,
    FechaEliminacion DATETIME NULL,
    FechaRestauracion DATETIME NULL
);


INSERT INTO SolicitudCita (
    NombreCompleto,
    Correo,
    Telefono,
    NombreMascota,
    Servicio,
    Mensaje
)
VALUES
('Carlos Ramirez', 'carlos.ramirez@gmail.com', '+51 987654321', 'Rocky', 'Consulta veterinaria', 'Mi perro tiene fiebre desde ayer y no quiere comer.'),
('Lucia Torres', 'lucia.torres@hotmail.com', '+51 912345678', 'Luna', 'Baño y corte', 'Necesito un baño completo y corte de pelo para mi mascota.'),
('Miguel Fernandez', 'miguel.f@gmail.com', '+51 998877665', 'Max', 'Vacunación', 'Quiero programar la vacuna anual para mi perro.'),
('Andrea Lopez', 'andrea.lopez@gmail.com', '+51 955443322', 'Milo', 'Desparasitación', 'Mi gato necesita desparasitación interna y externa.'),
('Jorge Castillo', 'jorge.castillo@yahoo.com', '+51 944556677', 'Firulais', 'Emergencia', 'Mi mascota sufrió un accidente y necesita atención urgente.'),
('Valeria Soto', 'valeria.soto@gmail.com', '+51 933221100', 'Nina', 'Consulta general', 'Mi mascota está decaída y quiero una revisión general.');

SELECT * FROM solicitud_cita;



-- Tabla users
CREATE TABLE users (
    ID_usuario UUID PRIMARY KEY,
    Nombre TEXT,
    Correo TEXT,
    Telefono TEXT,
    Tipo_participante TEXT
);


---

-- Tabla propuesta
CREATE TABLE propuesta (
    ID_propuesta UUID PRIMARY KEY,
    ID_Usuario UUID NOT NULL,
    Nombre_proyecto TEXT,
    Descripcion_problema TEXT,
    Solucion_problema TEXT,
    Area_impacto TEXT,
    Descripcion_general TEXT,
    Fecha_envio TIMESTAMP,
    -- Ref: propuesta.ID_Usuario > users.ID_usuario
    FOREIGN KEY (ID_Usuario) REFERENCES users (ID_usuario)
);

---

-- Tabla Pregunta
CREATE TABLE Pregunta (
    ID_Pregunta UUID PRIMARY KEY,
    ID_propuesta UUID NOT NULL,
    Texto_pregunta TEXT,
    Respuesta TEXT,
    Puntaje INT,
    -- Ref: "propuesta"."ID_propuesta" < "Pregunta"."ID_propuesta"
    FOREIGN KEY (ID_propuesta) REFERENCES propuesta (ID_propuesta)
);

---

-- Tabla Evaluacion_puntaje
CREATE TABLE Evaluacion_puntaje (
    ID_Evaluacion_puntaje UUID PRIMARY KEY,
    ID_Propuesta UUID NOT NULL,
    Puntaje_total INT,
    Resultado TEXT,
    -- Ref: Evaluacion_puntaje.ID_Propuesta > propuesta.ID_propuesta
    FOREIGN KEY (ID_Propuesta) REFERENCES propuesta (ID_propuesta)
);

---

-- Tabla Evaluacion_interna
CREATE TABLE Evaluacion_interna (
    ID_Evaluacion_interna UUID PRIMARY KEY,
    ID_Propuesta UUID UNIQUE NOT NULL, -- UNIQUE especificado en el esquema original
    Comentarios TEXT,
    Desicion_final TEXT,
    Fecha TIMESTAMP,
    -- Ref: Evaluacion_interna.ID_Propuesta > propuesta.ID_propuesta
    FOREIGN KEY (ID_Propuesta) REFERENCES propuesta (ID_propuesta)
);
CREATE TABLE animales.ANIMAL (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  especie VARCHAR(50) NOT NULL,
  genero VARCHAR(50) NOT NULL
);

CREATE TABLE animales.ave (
--   id SERIAL PRIMARY KEY,
--   nombre VARCHAR(50) NOT NULL,
  vuela bool not null
)INHERITS (animales.ANIMAL)
alter table animales.ave add primary key (id);

CREATE TABLE animales.mamiferos (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL, -- sobra porque viene en la herencia
  pelo bool not null,
  clima VARCHAR(50) NOT NULL
)INHERITS (animales.ANIMAL);

CREATE TABLE animales.reptil (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL, -- sobra porque viene en la herencia
  cola bool NOT NULL,
  agua bool NOT NULL
)INHERITS (animales.ANIMAL);

INSERT INTO animales.ave (nombre, especie, genero, vuela) VALUES ('Pelicano', 'Pájaro Blanco', 'H', true);
INSERT INTO animales.ave (nombre, especie, genero, vuela) VALUES ('Avestruz', 'Pájaro Marrón', 'M', false);

select * from animales.ave; -- solo los de ave


INSERT INTO animales.mamiferos (nombre, especie, genero, pelo, clima) VALUES ('Nutria', 'Mamífero marrón', 'H', true, 'terrestre/acuático');
INSERT INTO animales.mamiferos (nombre, especie, genero, pelo, clima) VALUES ('Delfín', 'Mamífero azul', 'M', false, 'acuático');

select * from animales.mamiferos; -- solo los de mamíferos


INSERT INTO animales.reptil (nombre, especie, genero, cola, agua) VALUES ('Lagartija', 'Reptil descolado', 'H', true, true);
INSERT INTO animales.reptil (nombre, especie, genero, cola, agua) VALUES ('Serpiente', 'Reptil reptante', 'M', false, true);

select * from animales.reptil; -- solo los de reptil


INSERT INTO animales.animal (nombre, especie, genero) VALUES ('Pez Payaso', 'Pez Inofensivo', 'H');
INSERT INTO animales.animal (nombre, especie, genero) VALUES ('Tiburón Blanco', 'Pez Peligroso', 'M');

select * from animales.animal; -- todos los animale

select * from only animales.animal; -- solo los de animal


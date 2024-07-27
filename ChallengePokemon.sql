-------------------------------Creamos la base de datos y las tablas---------------------------------------------
create DATABASE ChallengeMaestroPokemon;
---------------------------------------Creamos las tablas--------------------------------------------------------
use ChallengeMaestroPokemon;

CREATE TABLE IF NOT EXISTS Entrenador (
    IdEntrenador INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(25) NOT NULL,
    PasaTiempo VARCHAR(25) NOT NULL
);

create table if not exists Pokemon(
	IdPokemon int primary key,
    Nombre varchar(25),
    Tipo varchar(25),
    Ataque int,
    Defensa int,
    Velocidad int
);

CREATE TABLE IF NOT EXISTS EntrenadorPokemon (
    IdEntrenadorPokemon INT PRIMARY KEY AUTO_INCREMENT,
    IdEntrenador INT,
    IdPokemon INT,
    FOREIGN KEY (IdEntrenador) REFERENCES Entrenador(IdEntrenador),
    FOREIGN KEY (IdPokemon) REFERENCES Pokemon(IdPokemon),
    UNIQUE (IdPokemon)
);

CREATE TABLE IF NOT EXISTS Batallas (
    IdBatalla INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    IdEntrenador1 INT,
    IdPokemon1 INT,
    IdEntrenador2 INT,
    IdPokemon2 INT,
    Resultado VARCHAR(50),
    FOREIGN KEY (IdEntrenador1) REFERENCES Entrenador(IdEntrenador),
    FOREIGN KEY (IdEntrenador2) REFERENCES Entrenador(IdEntrenador),
    FOREIGN KEY (IdPokemon1) REFERENCES Pokemon(IdPokemon),
    FOREIGN KEY (IdPokemon2) REFERENCES Pokemon(IdPokemon)
);

----------------------------------------------Inicializamos---------------------------------
INSERT INTO Pokemon (idPokemon, nombre, tipo, ataque, defensa, velocidad) VALUES
(1, 'bulbasaur', 'planta', 49, 49, 45),
(2, 'ivysaur', 'planta', 62, 63, 60),
(3, 'venusaur', 'planta', 82, 83, 80),
(4, 'charmander', 'fuego', 52, 43, 65),
(5, 'charmeleon', 'fuego', 64, 58, 80),
(6, 'charizard', 'fuego', 84, 78, 100),
(7, 'squirtle', 'agua', 48, 65, 43),
(8, 'wartortle', 'agua', 63, 80, 58),
(9, 'blastoise', 'agua', 83, 100, 78),
(10, 'caterpie', 'bicho', 30, 35, 45),
(11, 'metapod', 'bicho', 20, 55, 30),
(12, 'butterfree', 'bicho', 45, 50, 70),
(13, 'weedle', 'bicho', 35, 30, 50),
(14, 'kakuna', 'bicho', 25, 50, 35),
(15, 'beedrill', 'bicho', 90, 40, 75),
(16, 'pidgey', 'volador', 45, 40, 56),
(17, 'pidgeotto', 'volador', 60, 55, 71),
(18, 'pidgeot', 'volador', 80, 75, 101),
(19, 'rattata', 'normal', 56, 35, 72),
(20, 'raticate', 'normal', 81, 60, 97),
(21, 'spearow', 'volador', 60, 30, 70),
(22, 'fearow', 'volador', 90, 65, 100),
(23, 'ekans', 'veneno', 60, 44, 55),
(24, 'arbok', 'veneno', 85, 69, 80),
(25, 'pikachu', 'eléctrico', 55, 40, 90),
(26, 'raichu', 'eléctrico', 90, 55, 110),
(27, 'sandshrew', 'tierra', 75, 85, 40),
(28, 'sandslash', 'tierra', 100, 110, 65),
(29, 'nidoran♀', 'veneno', 47, 52, 41),
(30, 'nidorina', 'veneno', 62, 67, 56),
(31, 'nidoqueen', 'veneno', 92, 87, 76),
(32, 'nidoran♂', 'veneno', 57, 40, 50),
(33, 'nidorino', 'veneno', 72, 57, 65),
(34, 'nidoking', 'veneno', 102, 77, 85),
(35, 'clefairy', 'hada', 45, 48, 35),
(36, 'clefable', 'hada', 70, 73, 60),
(37, 'vulpix', 'fuego', 41, 40, 65),
(38, 'ninetales', 'fuego', 76, 75, 100),
(39, 'jigglypuff', 'hada', 45, 20, 20),
(40, 'wigglytuff', 'hada', 70, 45, 45),
(41, 'zubat', 'volador', 45, 35, 55),
(42, 'golbat', 'volador', 80, 70, 90),
(43, 'oddish', 'planta', 50, 55, 30),
(44, 'gloom', 'planta', 65, 70, 40),
(45, 'vileplume', 'planta', 80, 85, 50),
(46, 'paras', 'bicho', 70, 55, 25),
(47, 'parasect', 'bicho', 95, 80, 30),
(48, 'venonat', 'bicho', 55, 50, 45),
(49, 'venomoth', 'bicho', 65, 60, 90),
(50, 'diglett', 'tierra', 55, 25, 95),
(51, 'dugtrio', 'tierra', 80, 50, 120),
(52, 'meowth', 'normal', 45, 35, 90),
(53, 'persian', 'normal', 70, 60, 115),
(54, 'psyduck', 'agua', 52, 48, 55),
(55, 'golduck', 'agua', 82, 78, 85),
(56, 'mankey', 'lucha', 80, 35, 70),
(57, 'primeape', 'lucha', 105, 60, 95),
(58, 'growlithe', 'fuego', 70, 45, 60),
(59, 'arcanine', 'fuego', 110, 80, 95),
(60, 'poliwag', 'agua', 50, 40, 90),
(61, 'poliwhirl', 'agua', 65, 65, 90),
(62, 'poliwrath', 'agua', 95, 95, 70),
(63, 'abra', 'psíquico', 20, 15, 90),
(64, 'kadabra', 'psíquico', 35, 30, 105),
(65, 'alakazam', 'psíquico', 50, 45, 120),
(66, 'machop', 'lucha', 80, 50, 35),
(67, 'machoke', 'lucha', 100, 70, 45),
(68, 'machamp', 'lucha', 130, 80, 55),
(69, 'bellsprout', 'planta', 75, 35, 40),
(70, 'weepinbell', 'planta', 90, 50, 55),
(71, 'victreebel', 'planta', 105, 65, 70),
(72, 'tentacool', 'agua', 40, 35, 70),
(73, 'tentacruel', 'agua', 70, 65, 100),
(74, 'geodude', 'roca', 80, 100, 20),
(75, 'graveler', 'roca', 95, 115, 35),
(76, 'golem', 'roca', 120, 130, 45),
(77, 'ponyta', 'fuego', 85, 55, 90),
(78, 'rapidash', 'fuego', 100, 70, 105),
(79, 'slowpoke', 'agua', 65, 65, 15),
(80, 'slowbro', 'agua', 75, 110, 30),
(81, 'magnemite', 'eléctrico', 35, 70, 45),
(82, 'magneton', 'eléctrico', 60, 95, 70),
(83, 'farfetchd', 'volador', 65, 55, 60),
(84, 'doduo', 'volador', 85, 45, 75),
(85, 'dodrio', 'volador', 110, 70, 100),
(86, 'seel', 'agua', 45, 55, 45),
(87, 'dewgong', 'agua', 70, 80, 70),
(88, 'grimer', 'veneno', 80, 50, 25),
(89, 'muk', 'veneno', 105, 75, 50),
(90, 'shellder', 'agua', 65, 100, 40),
(91, 'cloyster', 'agua', 95, 180, 70),
(92, 'gastly', 'fantasma', 35, 30, 80),
(93, 'haunter', 'fantasma', 50, 45, 95),
(94, 'gengar', 'fantasma', 65, 60, 110),
(95, 'onix', 'roca', 45, 160, 70),
(96, 'drowzee', 'psíquico', 48, 45, 42),
(97, 'hypno', 'psíquico', 73, 70, 67),
(98, 'krabby', 'agua', 105, 90, 50),
(99, 'kingler', 'agua', 130, 115, 75),
(100, 'voltorb', 'eléctrico', 30, 50, 100),
(101, 'electrode', 'eléctrico', 50, 70, 140),
(102, 'exeggcute', 'planta', 40, 80, 40),
(103, 'exeggutor', 'planta', 95, 85, 55),
(104, 'cubone', 'tierra', 50, 95, 35),
(105, 'marowak', 'tierra', 80, 110, 45),
(106, 'hitmonlee', 'lucha', 120, 53, 87),
(107, 'hitmonchan', 'lucha', 105, 79, 76),
(108, 'lickitung', 'normal', 55, 75, 30),
(109, 'koffing', 'veneno', 65, 95, 35),
(110, 'weezing', 'veneno', 90, 120, 60),
(111, 'rhyhorn', 'tierra', 85, 95, 25),
(112, 'rhydon', 'tierra', 130, 120, 40),
(113, 'chansey', 'normal', 5, 5, 50),
(114, 'tangela', 'planta', 55, 115, 60),
(115, 'kangaskhan', 'normal', 95, 80, 90),
(116, 'horsea', 'agua', 40, 70, 60),
(117, 'seadra', 'agua', 65, 95, 85),
(118, 'goldeen', 'agua', 67, 60, 63),
(119, 'seaking', 'agua', 92, 65, 68),
(120, 'staryu', 'agua', 45, 55, 85),
(121, 'starmie', 'agua', 75, 85, 115),
(122, 'mr.mime', 'psíquico', 45, 65, 90),
(123, 'scyther', 'bicho', 110, 80, 105),
(124, 'jynx', 'hielo', 50, 35, 95),
(125, 'electabuzz', 'eléctrico', 83, 57, 105),
(126, 'magmar', 'fuego', 95, 57, 93),
(127, 'pinsir', 'bicho', 125, 100, 85),
(128, 'tauros', 'normal', 100, 95, 110),
(129, 'magikarp', 'agua', 10, 55, 80),
(130, 'gyarados', 'agua', 125, 79, 81),
(131, 'lapras', 'agua', 85, 80, 60),
(132, 'ditto', 'normal', 48, 48, 48),
(133, 'eevee', 'normal', 55, 50, 55),
(134, 'vaporeon', 'agua', 65, 60, 65),
(135, 'jolteon', 'eléctrico', 65, 60, 130),
(136, 'flareon', 'fuego', 65, 60, 65),
(137, 'porygon', 'normal', 60, 70, 40),
(138, 'omanyte', 'roca', 40, 100, 35),
(139, 'omastar', 'roca', 60, 125, 55),
(140, 'kabuto', 'roca', 80, 90, 55),
(141, 'kabutops', 'roca', 115, 105, 80),
(142, 'aerodactyl', 'roca', 105, 65, 130),
(143, 'snorlax', 'normal', 110, 65, 30),
(144, 'articuno', 'hielo', 85, 100, 85),
(145, 'zapdos', 'eléctrico', 90, 85, 100),
(146, 'moltres', 'fuego', 100, 90, 90),
(147, 'dratini', 'dragón', 64, 45, 50),
(148, 'dragonair', 'dragón', 84, 65, 70),
(149, 'dragonite', 'dragón', 134, 95, 80),
(150, 'mewtwo', 'psíquico', 110, 90, 130),
(151, 'mew', 'psíquico', 100, 100, 100);

Insert into Entrenador (Nombre, PasaTiempo) 
value ('Kevin', 'Cocinar'),
('Hugo','Codear'),
('Anna', 'Estudiar');

INSERT INTO EntrenadorPokemon (IdEntrenador, IdPokemon) 
VALUES (1, 9),
(2,13),
(3,25);

INSERT INTO Batallas (Fecha, IdEntrenador1,  IdPokemon1, IdEntrenador2, IdPokemon2, Resultado)
VALUES ('2024-07-27', 1, 9, 2, 13, 'Ganó Entrenador 1'),
       ('2024-07-28', 2, 13, 3, 25, 'Ganó Entrenador 2'),
       ('2024-07-29', 3, 25, 1, 9, 'Ganó Entrenador 3');

------------------------cargar---------------------------------------
INSERT INTO Entrenador (Nombre, PasaTiempo) 
VALUES ('Juan', 'Leer');

INSERT INTO Pokemon (IdPokemon, Nombre, Tipo, Ataque, Defensa, Velocidad) 
VALUES (152, 'chikorita', 'planta', 49, 65, 45);



---------------------------------Borrar------------------------------

START TRANSACTION;

DELETE FROM Batallas WHERE IdPokemon1 = 9 OR IdPokemon2 = 9;
DELETE FROM EntrenadorPokemon WHERE IdPokemon = 9;
DELETE FROM Pokemon WHERE IdPokemon = 9;

COMMIT;

------------------------------leer------------------------------------
SELECT * FROM Entrenador;
SELECT * FROM Pokemon;

SELECT *
FROM Pokemon 
JOIN EntrenadorPokemon ON Pokemon.IdPokemon = EntrenadorPokemon.IdPokemon
WHERE EntrenadorPokemon.IdEntrenador = 1;

------------------------------Actualizar-----------------------------

UPDATE Entrenador
SET PasaTiempo = 'Viajar'
WHERE IdEntrenador = 1;
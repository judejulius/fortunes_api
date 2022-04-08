CREATE TABLE monsters(
    id serial,
    name character varying(50),
    personality character varying(50)
);

CREATE TABLE habitats(
    id serial,
    name character varying(50),
    climate character varying(50),
    temperature int
);

CREATE TABLE lives(
    monster character varying(50),
    habitat character varying(50)
);

INSERT INTO monsters(name, personality)
VALUES 
('Fluffy','aggressive'),
('Tai long', 'deadly'),
('Death Bringer', 'cuddly');

INSERT INTO habitats(name, climate, temperature)
VALUES 
('desert','dry',100),
('dungeon', 'dark', 36),
('mountain', 'freezing', 0);

INSERT INTO lives(monster, habitat)
VALUES 
('Fluffy','mountain'),
('Tai long', 'desert'),
('Death Bringer', 'dungeon');

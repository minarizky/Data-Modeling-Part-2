CREATE TABLE Galaxies (
    GalaxyID INT PRIMARY KEY,
    Name VARCHAR(100),
    Type VARCHAR(50),
    DistanceFromEarth FLOAT
);

CREATE TABLE Stars (
    StarID INT PRIMARY KEY,
    Name VARCHAR(100),
    GalaxyID INT,
    Type VARCHAR(50),
    DistanceFromEarth FLOAT,
    FOREIGN KEY (GalaxyID) REFERENCES Galaxies(GalaxyID)
);

CREATE TABLE Planets (
    PlanetID INT PRIMARY KEY,
    Name VARCHAR(100),
    StarID INT,
    Type VARCHAR(50),
    DistanceFromEarth FLOAT,
    FOREIGN KEY (StarID) REFERENCES Stars(StarID)
);

CREATE TABLE Moons (
    MoonID INT PRIMARY KEY,
    Name VARCHAR(100),
    PlanetID INT,
    DistanceFromPlanet FLOAT,
    FOREIGN KEY (PlanetID) REFERENCES Planets(PlanetID)
);

-- Sample Data for Outer Space Schema

INSERT INTO Galaxies (GalaxyID, Name, Type, DistanceFromEarth) VALUES
(1, 'Milky Way', 'Spiral', 0),
(2, 'Andromeda', 'Spiral', 2537000);

INSERT INTO Stars (StarID, Name, GalaxyID, Type, DistanceFromEarth) VALUES
(1, 'Sun', 1, 'G-Type', 0),
(2, 'Alpha Centauri', 2, 'G-Type', 4.37);

INSERT INTO Planets (PlanetID, Name, StarID, Type, DistanceFromEarth) VALUES
(1, 'Earth', 1, 'Terrestrial', 0),
(2, 'Mars', 1, 'Terrestrial', 0.0000158);

INSERT INTO Moons (MoonID, Name, PlanetID, DistanceFromPlanet) VALUES
(1, 'Moon', 1, 0.00000257),
(2, 'Phobos', 2, 0.00000002);

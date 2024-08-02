CREATE TABLE Airports (
    AirportID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100)
);

CREATE TABLE Planes (
    PlaneID INT PRIMARY KEY,
    Model VARCHAR(100),
    Capacity INT
);

CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    PlaneID INT,
    DepartureAirportID INT,
    ArrivalAirportID INT,
    DepartureTime TIMESTAMP,
    ArrivalTime TIMESTAMP,
    FOREIGN KEY (PlaneID) REFERENCES Planes(PlaneID),
    FOREIGN KEY (DepartureAirportID) REFERENCES Airports(AirportID),
    FOREIGN KEY (ArrivalAirportID) REFERENCES Airports(AirportID)
);

CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY,
    Name VARCHAR(100),
    PassportNumber VARCHAR(100)
);

CREATE TABLE FlightPassengers (
    FlightPassengerID INT PRIMARY KEY,
    FlightID INT,
    PassengerID INT,
    SeatNumber VARCHAR(10),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID)
);

-- Sample Data for Air Traffic Schema

INSERT INTO Airports (AirportID, Name, Location) VALUES
(1, 'JFK', 'New York'),
(2, 'LAX', 'Los Angeles');

INSERT INTO Planes (PlaneID, Model, Capacity) VALUES
(1, 'Boeing 747', 416),
(2, 'Airbus A320', 180);

INSERT INTO Flights (FlightID, PlaneID, DepartureAirportID, ArrivalAirportID, DepartureTime, ArrivalTime) VALUES
(1, 1, 1, 2, '2024-08-01 08:00:00', '2024-08-01 11:00:00'),
(2, 2, 2, 1, '2024-08-02 15:00:00', '2024-08-02 18:00:00');

INSERT INTO Passengers (PassengerID, Name, PassportNumber) VALUES
(1, 'John Doe', '123456789'),
(2, 'Jane Smith', '987654321');

INSERT INTO FlightPassengers (FlightPassengerID, FlightID, PassengerID, SeatNumber) VALUES
(1, 1, 1, '12A'),
(2, 2, 2, '14B');

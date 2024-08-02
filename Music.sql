-- Music Schema

CREATE TABLE Genres (
    GenreID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Artists (
    ArtistID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Albums (
    AlbumID INT PRIMARY KEY,
    Title VARCHAR(100),
    ArtistID INT,
    ReleaseDate DATE,
    GenreID INT,
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

CREATE TABLE Tracks (
    TrackID INT PRIMARY KEY,
    Title VARCHAR(100),
    AlbumID INT,
    Duration TIME,
    TrackNumber INT,
    FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID)
);

-- Sample Data for Music Schema

INSERT INTO Genres (GenreID, Name) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Jazz'),
(4, 'Classical');

INSERT INTO Artists (ArtistID, Name) VALUES
(1, 'The Beatles'),
(2, 'Michael Jackson'),
(3, 'Miles Davis'),
(4, 'Ludwig van Beethoven');

INSERT INTO Albums (AlbumID, Title, ArtistID, ReleaseDate, GenreID) VALUES
(1, 'Abbey Road', 1, '1969-09-26', 1),
(2, 'Thriller', 2, '1982-11-30', 2),
(3, 'Kind of Blue', 3, '1959-08-17', 3),
(4, 'Symphony No. 9', 4, '1824-05-07', 4);

INSERT INTO Tracks (TrackID, Title, AlbumID, Duration, TrackNumber) VALUES
(1, 'Come Together', 1, '00:04:20', 1),
(2, 'Something', 1, '00:03:03', 2),
(3, 'Thriller', 2, '00:05:57', 1),
(4, 'Billie Jean', 2, '00:04:54', 2),
(5, 'So What', 3, '00:09:22', 1),
(6, 'Freddie Freeloader', 3, '00:09:46', 2),
(7, 'Ode to Joy', 4, '00:24:32', 4);

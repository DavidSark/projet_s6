--Table Planete
CREATE TABLE Planete (
    planeteID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    nom TEXT,
    description TEXT,
    atmosphere TEXT,
    population TEXT,
    atterissage TEXT,
    visite TEXT
);

--Table Interface
CREATE TABLE Interface(
    interfaceID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    vie INTEGER,
    oxygen INTEGER,
    planeteID INTEGER,
    FOREIGN KEY (planeteID) REFERENCES Planete(planeteID)
);

--Table Scenario
CREATE TABLE Scenario(
    scenarioID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    description TEXT,
    reponse1 TEXT,
    reponse2 TEXT,
    image TEXT,
    scenarioSuivant1 INTEGER,
    scenarioSuivant2 INTEGER,
    planeteID INTEGER,
    FOREIGN KEY (planeteID) REFERENCES Planete(planeteID)
);





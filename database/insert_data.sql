--Insertion planete
INSERT INTO Planete (nom, description, atmosphere, population,atterissage, visite, image) VALUES ('Terre', 'La Terre est une planète bleu qui en fait a des caractéristiques bien à elle et elle est aussi bleu parce que elle est est blue en fait. La Terre est une planète bleu qui en fait a des caractéristiques bien à elle et elle est aussi bleu parce que elle est est blue en fait. La Terre est une planète bleu qui en fait a des caractéristiques bien à elle et elle est aussi bleu parce que elle est est blue en fait. La Terre est une planète bleu qui en fait a des caractéristiques bien à elle et elle est aussi bleu parce que elle est est blue en fait. ', 'Épaisse - Gazeuse', 'Inconu', 'Possible', 'Déjà visité', '/img/hearth.png');
INSERT INTO Planete (nom, description, atmosphere, population,atterissage, visite, image) VALUES ('Mars', 'Mars est une planète rouge qui en fait a des caractéristiques bien à elle et elle est aussi rouge parce que elle est est rouge en fait.', 'Fine - Gazeuse', 'Connu', 'Impossible', 'Non visité', '/img/mars.png');

--Insertion Interface
INSERT INTO Interface (vie, oxygen, planeteID) VALUES (100,100,1);
INSERT INTO Interface (vie, oxygen, planeteID) VALUES (100,100,2);

--Insertion Scenario
INSERT INTO Scenario (description, reponse1, reponse2, image, scenarioSuivant1, scenarioSuivant2, planeteID) VALUES ('Vous êtes arrivé sur la planète Terre mais une étrange se passe, un monstre apparait..', 'Vous décidez de vous battre!', 'Vous décidez de vous enfuir et de retourner au vaisseau!', '/img/image1.jpg',2,3,1);
INSERT INTO Scenario (description, reponse1, reponse2, image, scenarioSuivant1, scenarioSuivant2, planeteID) VALUES ("Se battre n'est pas toujours la meilleure option, vous perdez. ", 'Sortir un pistolet rayon laser', "S'enfuir", '/img/image2.jpg',1,3,1);
INSERT INTO Scenario (description, reponse1, reponse2, image, scenarioSuivant1, scenarioSuivant2, planeteID) VALUES ("vous vous êtes enfuit de la planète.. ", ' ', " ", '/img/image2.jpg',NULL,NULL,1);










-- INSERT INTO Scenario (description, reponse1, reponse2, image,scenarioSuivant1, scenarioSuivant2, planeteID) VALUES ('Vous êtes arrivé sur la planète Mars. Vous ne voyez rien', 'Vous décidez de retourner au vaisseau!', "Vous décidez d'explorer",'img/image1.jpg', 2,3, 2);



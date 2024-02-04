--Insertion planete
INSERT INTO Planete (nom, description, atmosphere, population,atterissage, visite) VALUES ('Terre', 'La Terre est une planète bleu qui en fait a des caractéristiques bien à elle et elle est aussi bleu parce que elle est est blue en fait.', 'Épaisse - Gazeuse', 'Inconu', 'Possible', 'Déjà visité');
INSERT INTO Planete (nom, description, atmosphere, population,atterissage, visite) VALUES ('Mars', 'Mars est une planète rouge qui en fait a des caractéristiques bien à elle et elle est aussi rouge parce que elle est est rouge en fait.', 'Fine - Gazeuse', 'Connu', 'Impossible', 'Non visité');

--Insertion Interface
INSERT INTO Interface (vie, oxygen, planeteID) VALUES (100,100,1);
INSERT INTO Interface (vie, oxygen, planeteID) VALUES (100,100,2);

--Insertion Scenario
INSERT INTO Scenario (description, reponse1, reponse2, image, planeteID) VALUES ('Vous êtes arrivé sur la planète Terre mais une étrange se passe, un monstre apparait..', 'Vous décidez de vous enfuir et de retourner au vaisseau!', 'Vous décidez de vous battre!', 'img/image1.jpg',1);
INSERT INTO Scenario (description, reponse1, reponse2, image, planeteID) VALUES ('Vous êtes arrivé sur la planète Mars. Vous ne voyez rien', 'Vous décidez de retourner au vaisseau!', "Vous décidez d'explorer",'img/image1.jpg',2);



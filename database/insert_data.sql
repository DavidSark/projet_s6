--Insertion planete
INSERT INTO Planete (nom, description, atmosphere, population, atterissage, visite, image) VALUES ('Maroo', 'Maroon is a desert planet, swept by strong winds and marked by frequent sandstorms. Its arid surface seems to hide nothing. There seems to be no life on this planet, and it looks very hostile...', 'Thick - Fizzy', 'Unknown', 'Possible', 'Déjà visité', '/img/texture1.jpg');
INSERT INTO Planete (nom, description, atmosphere, population, atterissage, visite, image) VALUES ('Zypera', 'Zypera is a planet covered in dense, mysterious forest, bathed in bluish light from its distant sun. This particular light seems to give unique properties to the planet''s flora and fauna. There seemed to be life on this planet, but suddenly it all disappeared...', 'Fine - Sparkling', 'Unknown', 'Possible', 'Non visité', '/img/texture4.jpg');

--Insertion Interface
INSERT INTO Interface (vie, oxygen, planeteID) VALUES (100,100,1);
INSERT INTO Interface (vie, oxygen, planeteID) VALUES (100,100,2);

INSERT INTO Scenario (description, reponse1, reponse2, image, scenarioSuivant1, scenarioSuivant2, planeteID)
-- début ID = 1 :
VALUES ("You've arrived on the planet Zypera, a dense, mysterious jungle stretching out before you. Your mission: to explore this new land and discover its secrets.", 'Explore', 'Back to the ship', '/img/zypera/image1.webp',2,3,2),
-- explorer ID = 2 :
("You decide to head deep into the lush jungle. The sounds of wildlife fill the air, and you feel curiosity sweep over you.
Deep in the forest, you discover an ancient altar, emitting a soft light.
", "Studying the altar", 'Continue on your way', '/img//zypera/image2.webp',4,5,2),

-- Retourner au vaisseau = 3 :
("You choose to return to the ship, unsure of what you might find on Zypera. However, once on board, a feeling of incompleteness prompts you to reconsider. The planet has secrets to reveal. Do you return to Zypera or end the mission prematurely?", "Back to Zypera", 'End mission', '/img/zypera/image1.webp',1,1000,2),

-- Examiner l'autel ID = 4
("Your examination of the altar triggers a sequence of lights, revealing the history of a civilization that merged with the planet. You realize that life on Zypera is interconnected in ways you'd never imagined. The lights form images, showing you beings who lived in harmony with their environment, sharing a collective consciousness. You are touched by their decision to become one with Zyphera to save their world from destruction.", "Continue communication", '', '/img/zypera/image4.webp',6,1001,2),


--Continuer chemin ID = 5
("You decide not to interfere with the altar and continue your exploration. You go deeper and deeper into the jungle. It becomes darker and denser. 
As you advance, you come across what appears to be a giant plant.
It seems to be eyeing you hungrily...", "Slowly return to the altar", "Cross anyway, the plant looks nice", '/img/zypera/image3.webp',2,999,2),

--Continuer la communication ID = 6
("You concentrate, trying to feel the connection with the planet. After a few moments, you begin to hear whispers, an indication of Zyphera's collective consciousness. She welcomes you and shares visions of a perfect symbiosis between nature and its inhabitants, teaching you the importance of balance and preservation.", "Ask for advice on how to help the Earth", "", '/img/zypera/image5.webp',7,1001,2),

--Demander des conseils ID = 7
("After lengthy explanations of how to adopt practices that ensure the Earth's resources are not depleted faster than they can regenerate. Encourage global awareness of the interconnectedness between people and nature, working together to protect and nurture the environment, and Develop technologies that improve quality of life without compromising the health of the planet.
You take a moment to think about how you can integrate these into your life and share them with the world. Zyphera's consciousness offers you one last vision, that of a future where the Earth and its inhabitants live in peace, in harmony with nature, inspired by your testimony and your commitment.", "Continue", "", '/img/zypera/image4.webp',8,1001,2),

--Demander des conseils suite ID = 8
("Just as you are about to conclude your communication with Zyphera's consciousness, she sends you a request, a task that will require your courage, ingenuity and dedication. Zyphera, though evolved and harmonious, is threatened by an invasive form, an alien plant accidentally introduced by a comet. This plant is beginning to disrupt Zyphera's ecological balance, threatening planetary symbiosis.", "Agreeing to help the planet", "Ignore the request and return to the ship with the information", '/img/zypera/image4.webp',9,1000,2),

--Accepter d'aider ID = 9
("Zyphera's consciousness guides you to a remote part of the planet where a rare specimen, the Herb of Light, grows, capable of neutralizing the invasion.", "Take a sample of the herb and bring it back to the altar.", "", '/img/zypera/image6.webp',10,1001,2),

--Prendre l'échantillon ID = 10
("The threat is quickly neutralized, restoring the balance. The Zyphera conscience thanks you deeply, pointing out that your success is not only a victory for Zyphera, but an example of what can be achieved when beings work together for the common good even if they are light years apart. Difference is nothing when the will to help and understand others transcends distances and differences. This experience has shown you that, beyond appearances, all beings share a common bond: life itself and its fragile balance. You take a moment to reflect on the impact of this adventure on your own worldview, and how you can apply it on your return to Earth.", "Continue", "", '/img/zypera/image7.webp',11,1001,2),

--Prendre l'échantillon ID = 11
("This experience has shown you that, beyond appearances, all beings share a common bond: life itself and its fragile balance. You take a moment to reflect on the impact of this adventure on your own worldview, and how you can apply it when you return to Earth.
Before letting you go, the Zyphera consciousness offers you a gift: a small capsule containing the essence of the Herb of Light, a symbol of healing and inter-species cooperation. She explains that this essence can serve as a reminder that, even in the face of seemingly insurmountable challenges, there is always a solution when effort and knowledge are combined.", "Thank the planet and return to the ship.", "", '/img/zypera/image4.webp',1000,1001,2),

-- HISTOIRE MAROO
--Arriver sur Maroo ID = 12
("No sooner has your ship touched down on the chalky soil of Naroon than you are struck by the stark beauty of this infinite desert. Your mission: to explore Naroon for signs of past or present life and discover its hidden secrets.", "Explore", "Back to the ship", '/img/maroo/image1.webp',14,13,1),

--Arriver sur Maroo ID = 13
("You choose to return to the ship, unsure of what you might find on Maroo. However, once on board, a feeling of incompleteness prompts you to reconsider. The planet has secrets to reveal. Do you return to Maroo or end the mission prematurely?", "Back to Maroo", "Complete mission", '/img/maroo/image1.webp',12,1000,1),

--Arriver sur Maroo ID = 14
("You scour the desert, using sensors to detect any anomalies. Your perseverance is rewarded when you stumble upon an underground ecosystem, a hidden oasis, where life has adapted to thrive despite the arid conditions.", "Examine", "Follow the path", '/img/maroo/image2.webp',16,15,1),

--Arriver sur Maroo ID = 15
("You decide to move on.
After walking for several minutes, you come across a strange sandstorm.
", "Back to the oasis for shelter", "Cross the storm", '/img/maroo/image3.webp',14,999,1),

--Arriver sur Maroo ID = 16
("Your first examination leads you to a network of canyons where trapped moisture allows an astonishing variety of plants to thrive. These plants, through a complex root system, seem able to capture moisture from the rare rainfall, creating micro-ecosystems.
", "Take a closer look at plants", "", '/img/maroo/image2.webp',17,1001,1),

--Arriver sur Maroo ID = 17
("It seems that plants have evolved to become what we might call 'plant predators'. Some have passive traps, such as sticky leaves or funnel-shaped structures, capturing insects and sometimes small animals to decompose them and absorb nutrients. Other plants have more active mechanisms, closing in on their prey with rapid movements triggered by contact.
", "Take a sample", "", '/img/maroo/image4.webp',18,1001,1),

--Arriver sur Maroo ID = 18
("If you tear off a piece of one of the plants, it's as if you've woken up the whole cave, and the plants start attacking you.
", "Run away!", "", '/img/maroo/image5.webp',19,1001,1),

--Arriver sur Maroo ID = 19
("You manage to escape from the cave.
", "Continue exploring", "The planet is too hostile to return to the ship", '/img/maroo/image6.webp',20,1000,1),

--Arriver sur Maroo ID = 20
("You're walking in circles in the desert land of Maroo...
", "Continue exploring", "There's really nothing to go back to.", '/img/maroo/image7.webp',21,1000,1),
--Arriver sur Maroo ID = 21
("Unfortunately, Naroo, the desert planet, doesn't seem to offer anything in terms of resources due to its hostile environment. Despite the fascinating adaptations of the carnivorous plants, which show an intense struggle for survival, the absence of resources that can be exploited at first sight poses a major challenge. You find yourself at a critical point in your mission on Naroon, confronted with the austere reality of this desolate planet.
", "Back to the ship", "", '/img/maroo/image7.webp',1000,1001,1);



-- INSERT INTO Scenario (description, reponse1, reponse2, image,scenarioSuivant1, scenarioSuivant2, planeteID) VALUES ('Vous êtes arrivé sur la planète Zypera. Vous ne voyez rien', 'Vous décidez de retourner au vaisseau!', "Vous décidez d'explorer",'img/image1.jpg', 2,3, 2);



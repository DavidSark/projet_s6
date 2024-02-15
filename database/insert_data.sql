--Insertion planete
INSERT INTO Planete (nom, description, atmosphere, population, atterissage, visite, image) VALUES ('Maroo', 'Maroon est une planète désertique, balayée par des vents forts et marquée par des tempêtes de sable fréquentes. Sa surface aride à l''air de ne rien cacher. Il semble ne pas avoir de vie sur cette planète et elle a l''air très hostile..', 'Épaisse - Gazeuse', 'Inconu', 'Possible', 'Déjà visité', '/img/texture1.jpg');
INSERT INTO Planete (nom, description, atmosphere, population, atterissage, visite, image) VALUES ('Zypera', 'Zypera est une planète recouverte d''une forêt dense et mystérieuse, baignée d''une lumière bleutée due à son soleil lointain. Cette lumière particulière semble donner des propriétés uniques à la faune et à la flore de la planète. Il semblait y avoir de la vie sur cette planète mais soudainement tout à disparut..', 'Fine - Gazeuse', 'Inconnu', 'Possible', 'Non visité', '/img/texture4.jpg');

--Insertion Interface
INSERT INTO Interface (vie, oxygen, planeteID) VALUES (100,100,1);
INSERT INTO Interface (vie, oxygen, planeteID) VALUES (100,100,2);

INSERT INTO Scenario (description, reponse1, reponse2, image, scenarioSuivant1, scenarioSuivant2, planeteID)
-- début ID = 1 :
VALUES ("Vous êtes arrivé sur la planète Zypera, une jungle dense et mystérieuse s'étend devant vous. Votre mission : explorer cette nouvelle terre et   découvrir ses secrets.", 'Explorer', 'Retourner au vaisseau', '/img/zypera/image1.webp',2,3,2),
-- explorer ID = 2 :
("Vous décidez de vous enfoncer dans la jungle luxuriante. Les sons de la vie sauvage remplissent l'air, et vous sentez la curiosité vous envahir.
 Au cœur de la forêt, vous découvrez un autel ancien, émettant une douce lumière. Que faites-vous ? 
", "Étudier l'autel", 'Continuer votre chemin', '/img//zypera/image2.webp',4,5,2),

-- Retourner au vaisseau = 3 :
("Vous choisissez de retourner au vaisseau, incertain de ce que vous pourriez trouver sur Zypera. Cependant, une fois à bord, un sentiment d'inachevé vous pousse à reconsidérer. La planète a des secrets à révéler. Retournez-vous sur Zypera ou terminez-vous la mission prématurément ?", "Retourner sur Zypera", 'Terminer la mission', '/img/image1.jpg',1,1000,2),

-- Examiner l'autel ID = 4
("Votre examen de l'autel déclenche une séquence de lumières, révélant l'histoire d'une civilisation qui a fusionné avec la planète. Vous réalisez que la vie sur Zypera est interconnectée d'une manière que vous n'auriez jamais imaginée. Les lumières forment des images, vous montrant des êtres qui vivaient en harmonie avec leur environnement, partageant une conscience collective. Vous êtes ému par leur décision de devenir un avec Zyphera pour sauver leur monde de la destruction.", "Continuer la communication", '', '/img/image1.jpg',6,1001,2),


--Continuer chemin ID = 5
("Vous décidez de ne pas interférer avec l'autel et continuez votre exploration. Vous vous enfoncez toujours plus profondément dans la jungle. Elle devient de plus en plus sombre et dense. 
Au fur et à mesure de votre avancée, vous tombez sur ce qui semble être une plante géante.
Elle semble vous regarder avec appétit...", "Retourner lentement vers l'autel", "Traverser quand même, la plante à l'air gentille", '/img/image1.jpg',2,999,2),

--Continuer la communication ID = 6
("Vous vous concentrez, tentant de ressentir la connexion avec la planète. Au bout de quelques moments, vous commencez à percevoir des murmures, une indication de la conscience collective de Zyphera. Elle vous accueille et partage des visions d'une symbiose parfaite entre la nature et ses habitants, vous enseignant l'importance de l'équilibre et de la préservation.", "Demander des conseils sur comment aider la Terre", "", '/img/image1.jpg',7,1001,2),

--Demander des conseils ID = 7
("Après de longue explications sur comment adopter des pratiques qui assurent que les ressources de la Terre ne sont pas épuisées plus rapidement qu'elles ne peuvent se régénérer. Encourager une prise de conscience globale de l'interconnectivité entre les peuples et la nature, travaillant ensemble pour protéger et nourrir l'environnement et Développer des technologies qui améliorent la qualité de vie sans compromettre la santé de la planète
Vous prenez un moment pour réfléchir à la manière dont vous pouvez les intégrer dans votre vie et les partager avec le monde. La conscience de Zyphera vous offre une dernière vision, celle d'un futur où la Terre et ses habitants vivent en paix, en harmonie avec la nature, inspirés par votre témoignage et votre engagement.", "Suite", "", '/img/image1.jpg',8,1001,2),

--Demander des conseils suite ID = 8
("Alors que vous êtes sur le point de conclure votre communication avec la conscience de Zyphera, elle vous transmet une requête, une tâche qui nécessitera votre courage, votre ingéniosité et votre dévouement. Zyphera, bien qu'évoluée et harmonieuse, est menacée par une forme invasive, une plante étrangère introduite accidentellement par une comète. Cette plante commence à perturber l'équilibre écologique de Zyphera, menaçant la symbiose planétaire.", "Accepter d'aider la planète", "Ignorer la demande et retourner au vaisseau avec les informations", '/img/image1.jpg',9,1000,2),

--Accepter d'aider ID = 9
("La conscience de Zyphera vous guide vers une région reculée de la planète où pousse un spécimen rare, l'Herbe de Lumière, capable de neutraliser l'invasion.", "Prendre un echantillon de l'herbe et la ramener à l'autel.", "", '/img/image1.jpg',10,1001,2),

--Prendre l'échantillon ID = 10
("la menace est rapidement neutralisée, rétablissant l'équilibre. La conscience de Zyphera vous remercie profondément, soulignant que votre succès n'est pas seulement une victoire pour Zyphera, mais un exemple de ce que l'on peut accomplir lorsque les êtres travaillent ensemble pour le bien commun même s'ils sont à des années lumières les uns des autres. La différence n'est rien quand la volonté d'aider et de comprendre l'autre transcende les distances et les différences. Cette expérience vous a montré qu'au-delà des apparences, tous les êtres partagent un lien commun : la vie elle-même et son fragile équilibre. Vous prenez un moment pour réfléchir à l'impact de cette aventure sur votre propre vision du monde et comment vous pouvez l'appliquer à votre retour sur Terre.", "Suite", "", '/img/image1.jpg',11,1001,2),

--Prendre l'échantillon ID = 11
(" Cette expérience vous a montré qu'au-delà des apparences, tous les êtres partagent un lien commun : la vie elle-même et son fragile équilibre. Vous prenez un moment pour réfléchir à l'impact de cette aventure sur votre propre vision du monde et comment vous pouvez l'appliquer à votre retour sur Terre.
La conscience de Zyphera, avant de vous laisser repartir, vous offre un cadeau : une petite capsule contenant l'essence de l'Herbe de Lumière, symbole de la guérison et de la coopération interespèces. Elle vous explique que cette essence peut servir de rappel que, même face à des défis apparemment insurmontables, il existe toujours une solution lorsque l'on combine les efforts et les connaissances.", "Remercier la planète et rentrer au vaisseau.", "", '/img/image1.jpg',1000,1001,2),

-- HISTOIRE MAROO
--Arriver sur Maroo ID = 12
("À peine votre vaisseau s'est-il posé sur le sol crayeux de Naroon que vous êtes frappé par la beauté austère de ce désert infini. Votre mission : explorer Naroon à la recherche de signes de vie passée ou présente et découvrir ses secrets cachés.", "Explorer", "Retourner au vaisseau", '/img/image1.jpg',14,13,1),

--Arriver sur Maroo ID = 13
("Vous choisissez de retourner au vaisseau, incertain de ce que vous pourriez trouver sur Maroo. Cependant, une fois à bord, un sentiment d'inachevé vous pousse à reconsidérer. La planète a des secrets à révéler. Retournez-vous sur Maroo ou terminez-vous la mission prématurément ?", "Retourner sur Maroo", "Terminer la mission", '/img/image1.jpg',12,1000,1),

--Arriver sur Maroo ID = 14
("Vous parcourez le désert, utilisant des capteurs pour détecter toute anomalie. Votre persévérance est récompensée lorsque vous tombez sur un écosystème souterrain, un oasis caché, où la vie s'est adaptée pour prospérer malgré les conditions arides.", "Examiner", "Continuer le chemin", '/img/image1.jpg',16,15,1),

--Arriver sur Maroo ID = 15
("Vous décidez de ne passer votre chemin.
Aprés plusieurs minutes de marche vous tomber sur une tempete de sable étrange.
", "Retourner s'abriter à l'oasis", "Traverser la tempete", '/img/image1.jpg',14,999,1),

--Arriver sur Maroo ID = 16
("Votre première examin vous conduit à un réseau de canyons où l'humidité piégée permet à une étonnante variété de plantes de prospérer. Ces plantes, à travers un système complexe de racines, semblent capables de capter l'humidité des rares pluies, créant des micro-écosystèmes.
", "examiner les plantes de plus prés", "", '/img/image1.jpg',17,1001,1),

--Arriver sur Maroo ID = 17
("Ils sembleraient que les  plantes ont évolué pour devenir ce que l'on pourrait appeler des 'prédateurs végétaux'. Certaines disposent de pièges passifs, comme des feuilles collantes ou des structures en forme d'entonnoir, capturant des insectes et parfois de petits animaux pour les décomposer et en absorber les nutriments. D'autres plantes sont dotées de mécanismes plus actifs, se refermant sur leurs proies avec des mouvements rapides déclenchés par le contact.
", "prélever un échantillon", "", '/img/image1.jpg',18,1001,1),

--Arriver sur Maroo ID = 18
("En arrachant un morceau d'un des plantes, c'est comme si vous aviez réveiller toute la grotte, les plantes se mettes à vous attaquer
", "S'enfuir !", "", '/img/image1.jpg',19,1001,1),

--Arriver sur Maroo ID = 19
("Vous arrivez à vous enfuir de la grotte.  
", "continuer un peu d'explorer", "La planète est trop hostile, retourner au vaisseau", '/img/image1.jpg',20,1000,1),

--Arriver sur Maroo ID = 20
("Vous tournez en rond dans la land désertique de Maroo..
", "Continuer d'explorer", "Il n'y a vraiment rien, retourner au vaisseau", '/img/image1.jpg',21,1000,1),
--Arriver sur Maroo ID = 21
("Malheureusement, Naroo, la planète désertique n'a pas l'air d'offrir quoi que ce soit en terme de ressource du à milieu hostile. Malgré les adaptations fascinantes des plantes carnivores qui montrent une intense lutte pour la survie, l'absence de ressources exploitables à première vue pose un défi majeur. Vous vous trouvez à un point critique de votre mission sur Naroon, confronté à la réalité austère de cette planète désertiquet
", "Retourner au vaisseau", "", '/img/image1.jpg',1000,1001,1);



-- INSERT INTO Scenario (description, reponse1, reponse2, image,scenarioSuivant1, scenarioSuivant2, planeteID) VALUES ('Vous êtes arrivé sur la planète Zypera. Vous ne voyez rien', 'Vous décidez de retourner au vaisseau!', "Vous décidez d'explorer",'img/image1.jpg', 2,3, 2);



USE oscar_database;
-- 1.1 — Quantos registros existem na tabela?
SELECT COUNT(*) AS total_registros
FROM indicados_ao_oscar;
-- R: com base no script fornecido, há 10.889 (muita coisa).

-- 1.2.1 — Quais são as diferentes categorias de premiação?
SELECT DISTINCT categoria
FROM indicados_ao_oscar
ORDER BY categoria;

-- R: Tem MUITAS categorias, tipo -> (aqui vai muitas linhas)

-- ACTOR
-- "ACTOR IN A LEADING ROLE"
-- "ACTOR IN A SUPPORTING ROLE"
-- ACTRESS
-- "ACTRESS IN A LEADING ROLE"
-- "ACTRESS IN A SUPPORTING ROLE"
-- "ANIMATED FEATURE FILM"
-- "ART DIRECTION"
-- "ART DIRECTION (Black-and-White)"
-- "ART DIRECTION (Color)"
-- "ASSISTANT DIRECTOR"
-- "AWARD OF COMMENDATION"
-- "BEST MOTION PICTURE"
-- "BEST PICTURE"
-- CINEMATOGRAPHY
-- "CINEMATOGRAPHY (Black-and-White)"
-- "CINEMATOGRAPHY (Color)"
-- "COSTUME DESIGN"
-- "COSTUME DESIGN (Black-and-White)"
-- "COSTUME DESIGN (Color)"
-- "DANCE DIRECTION"
-- DIRECTING
-- "DIRECTING (Comedy Picture)"
-- "DIRECTING (Dramatic Picture)"
-- DOCUMENTARY
-- "DOCUMENTARY (Feature)"
-- "DOCUMENTARY (Short Subject)"
-- "DOCUMENTARY FEATURE FILM"
-- "DOCUMENTARY SHORT FILM"
-- "ENGINEERING EFFECTS"
-- "FILM EDITING"
-- "FOREIGN LANGUAGE FILM"
-- "GORDON E. SAWYER AWARD"
-- "HONORARY AWARD"
-- "HONORARY FOREIGN LANGUAGE FILM AWARD"
-- "INTERNATIONAL FEATURE FILM"
-- "IRVING G. THALBERG MEMORIAL AWARD"
-- "JEAN HERSHOLT HUMANITARIAN AWARD"
-- MAKEUP
-- "MAKEUP AND HAIRSTYLING"
-- "MUSIC (Adaptation Score)"
-- "MUSIC (Music Score of a Dramatic or Comedy Picture)"
-- "MUSIC (Music Score of a Dramatic Picture)"
-- "MUSIC (Music Score--substantially original)"
-- "MUSIC (Original Dramatic Score)"
-- "MUSIC (Original Music Score)"
-- "MUSIC (Original Musical or Comedy Score)"
-- "MUSIC (Original Score--for a motion picture [not a musical])"
-- "MUSIC (Original Score)"
-- "MUSIC (Original Song Score and Its Adaptation -or- Adaptation Score)"
-- "MUSIC (Original Song Score and Its Adaptation or Adaptation Score)"
-- "MUSIC (Original Song Score or Adaptation Score)"
-- "MUSIC (Original Song Score)"
-- "MUSIC (Original Song)"
-- "MUSIC (Score of a Musical Picture--original or adaptation)"
-- "MUSIC (Scoring of a Musical Picture)"
-- "MUSIC (Scoring of Music--adaptation or treatment)"
-- "MUSIC (Scoring: Adaptation and Original Song Score)"
-- "MUSIC (Scoring: Original Song Score and Adaptation -or- Scoring: Adaptation)"
-- "MUSIC (Scoring)"
-- "MUSIC (Song--Original for the Picture)"
-- "MUSIC (Song)"
-- "OUTSTANDING MOTION PICTURE"
-- "OUTSTANDING PICTURE"
-- "OUTSTANDING PRODUCTION"
-- "PRODUCTION DESIGN"
-- "SHORT FILM (Animated)"
-- "SHORT FILM (Dramatic Live Action)"
-- "SHORT FILM (Live Action)"
-- "SHORT SUBJECT (Animated)"
-- "SHORT SUBJECT (Cartoon)"
-- "SHORT SUBJECT (Color)"
-- "SHORT SUBJECT (Comedy)"
-- "SHORT SUBJECT (Live Action)"
-- "SHORT SUBJECT (Novelty)"
-- "SHORT SUBJECT (One-reel)"
-- "SHORT SUBJECT (Two-reel)"
-- SOUND
-- "SOUND EDITING"
-- "SOUND EFFECTS"
-- "SOUND EFFECTS EDITING"
-- "SOUND MIXING"
-- "SOUND RECORDING"
-- "SPECIAL ACHIEVEMENT AWARD"
-- "SPECIAL ACHIEVEMENT AWARD (Sound Editing)"
-- "SPECIAL ACHIEVEMENT AWARD (Sound Effects Editing)"
-- "SPECIAL ACHIEVEMENT AWARD (Sound Effects)"
-- "SPECIAL ACHIEVEMENT AWARD (Visual Effects)"
-- "SPECIAL AWARD"
-- "SPECIAL EFFECTS"
-- "SPECIAL FOREIGN LANGUAGE FILM AWARD"
-- "SPECIAL VISUAL EFFECTS"
-- "UNIQUE AND ARTISTIC PICTURE"
-- "VISUAL EFFECTS"
-- WRITING
-- "WRITING (Adaptation)"
-- "WRITING (Adapted Screenplay)"
-- "WRITING (Motion Picture Story)"
-- "WRITING (Original Motion Picture Story)"
-- "WRITING (Original Screenplay)"
-- "WRITING (Original Story)"
-- "WRITING (Screenplay Adapted from Other Material)"
-- "WRITING (Screenplay Based on Material from Another Medium)"
-- "WRITING (Screenplay Based on Material Previously Produced or Published)"
-- "WRITING (Screenplay Written Directly for the Screen--based on factual material or on story material not previously published or produced)"
-- "WRITING (Screenplay Written Directly for the Screen)"
-- "WRITING (Screenplay--Adapted)"
-- "WRITING (Screenplay--based on material from another medium)"
-- "WRITING (Screenplay--Original)"
-- "WRITING (Screenplay)"
-- "WRITING (Story and Screenplay--based on factual material or material not previously published or produced)"
-- "WRITING (Story and Screenplay--based on material not previously published or produced)"
-- "WRITING (Story and Screenplay--written directly for the screen)"
-- "WRITING (Story and Screenplay)"
-- "WRITING (Title Writing)"

-- 1.2.2 — Quantas categorias únicas existem?

SELECT COUNT(DISTINCT categoria) AS total_categorias
FROM indicados_ao_oscar;

-- R: 115

-- 1.3 — Qual foi o primeiro ano de cerimônia registrado?

SELECT MIN(ano_cerimonia) AS primeiro_ano
FROM indicados_ao_oscar;

-- R: 1928

-- 1.4 — Qual foi o último ano de cerimônia registrado?

SELECT MAX(ano_cerimonia) AS ultimo_ano
FROM indicados_ao_oscar;

-- R: 2024

-- 1.5 — Quantas cerimônias do Oscar estão registradas no total?

SELECT COUNT(DISTINCT ano_cerimonia) AS total_ceremonias
FROM indicados_ao_oscar;

-- R: 96

-- 1.6 — Atualize os registros com os dados do Oscar 2025 e 2026

-- R: 
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'BEST PICTURE','Sean Baker, Alex Coco, Samantha Quan','Anora',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'BEST PICTURE','Nick Gordon, Brian Young, Brady Corbet','The Brutalist',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'BEST PICTURE','Fred Berger, James Mangold, Alex Heineman','A Complete Unknown',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'BEST PICTURE','Tessa Ross, Juliette Howell, Michael A. Jackman','Conclave',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'BEST PICTURE','Mary Parent, Cale Boyter, Denis Villeneuve','Dune: Part Two',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'BEST PICTURE','Pascal Caucheteux, Jacques Audiard','Emilia Pérez',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'BEST PICTURE','Maria Carlota Bruno, Rodrigo Teixeira','I\'m Still Here',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'BEST PICTURE','Dede Gardner, Jeremy Kleiner, Joslyn Barnes','Nickel Boys',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'BEST PICTURE','Coralie Fargeat, Tim Bevan, Eric Fellner','The Substance',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'BEST PICTURE','Marc Platt','Wicked',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'DIRECTING','Sean Baker','Anora',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'DIRECTING','Brady Corbet','The Brutalist',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'DIRECTING','James Mangold','A Complete Unknown',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'DIRECTING','Jacques Audiard','Emilia Pérez',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'DIRECTING','Coralie Fargeat','The Substance',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTOR IN A LEADING ROLE','Adrien Brody','The Brutalist',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTOR IN A LEADING ROLE','Timothée Chalamet','A Complete Unknown',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTOR IN A LEADING ROLE','Colman Domingo','Sing Sing',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTOR IN A LEADING ROLE','Ralph Fiennes','Conclave',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTOR IN A LEADING ROLE','Sebastian Stan','The Apprentice',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTRESS IN A LEADING ROLE','Mikey Madison','Anora',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTRESS IN A LEADING ROLE','Cynthia Erivo','Wicked',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTRESS IN A LEADING ROLE','Karla Sofía Gascón','Emilia Pérez',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTRESS IN A LEADING ROLE','Demi Moore','The Substance',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTRESS IN A LEADING ROLE','Fernanda Torres','I\'m Still Here',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTOR IN A SUPPORTING ROLE','Kieran Culkin','A Real Pain',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTOR IN A SUPPORTING ROLE','Yura Borisov','Anora',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTOR IN A SUPPORTING ROLE','Edward Norton','A Complete Unknown',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTOR IN A SUPPORTING ROLE','Guy Pearce','The Brutalist',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTOR IN A SUPPORTING ROLE','Jeremy Strong','The Apprentice',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTRESS IN A SUPPORTING ROLE','Zoe Saldaña','Emilia Pérez',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTRESS IN A SUPPORTING ROLE','Monica Barbaro','A Complete Unknown',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTRESS IN A SUPPORTING ROLE','Ariana Grande','Wicked',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTRESS IN A SUPPORTING ROLE','Felicity Jones','The Brutalist',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ACTRESS IN A SUPPORTING ROLE','Isabella Rossellini','Conclave',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'WRITING (ORIGINAL SCREENPLAY)','Sean Baker','Anora',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'WRITING (ORIGINAL SCREENPLAY)','Brady Corbet, Mona Fastvold','The Brutalist',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'WRITING (ORIGINAL SCREENPLAY)','Jesse Eisenberg','A Real Pain',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'WRITING (ORIGINAL SCREENPLAY)','Coralie Fargeat','The Substance',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'WRITING (ORIGINAL SCREENPLAY)','Moritz Binder, Tim Fehlbaum','September 5',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'WRITING (ADAPTED SCREENPLAY)','Peter Straughan','Conclave',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'WRITING (ADAPTED SCREENPLAY)','James Mangold, Jay Cocks','A Complete Unknown',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'WRITING (ADAPTED SCREENPLAY)','Jacques Audiard','Emilia Pérez',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'WRITING (ADAPTED SCREENPLAY)','RaMell Ross, Joslyn Barnes','Nickel Boys',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'WRITING (ADAPTED SCREENPLAY)','Clint Bentley, Greg Kwedar','Sing Sing',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ANIMATED FEATURE FILM','Gints Zilbalodis','Flow',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ANIMATED FEATURE FILM','Pete Docter','Inside Out 2',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ANIMATED FEATURE FILM','Adam Elliot','Memoir of a Snail',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ANIMATED FEATURE FILM','Nick Park','Wallace & Gromit: Vengeance Most Fowl',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'ANIMATED FEATURE FILM','Chris Sanders','The Wild Robot',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'INTERNATIONAL FEATURE FILM','Walter Salles','I\'m Still Here',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'INTERNATIONAL FEATURE FILM','Magnus von Horn','The Girl with the Needle',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'INTERNATIONAL FEATURE FILM','Jacques Audiard','Emilia Pérez',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'INTERNATIONAL FEATURE FILM','Ali Asgari','The Seed of the Sacred Fig',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'INTERNATIONAL FEATURE FILM','Gints Zilbalodis','Flow',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'DOCUMENTARY FEATURE FILM','Basel Adra, Rachel Szor, Hamdan Ballal, Yuval Abraham','No Other Land',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'DOCUMENTARY FEATURE FILM','Shiori Ito','Black Box Diaries',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'DOCUMENTARY FEATURE FILM','Brendan Bellomo, Slava Leontyev','Porcelain War',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'DOCUMENTARY FEATURE FILM','Johan Grimonprez','Soundtrack to a Coup d\'Etat',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'DOCUMENTARY FEATURE FILM','Julian Brave NoiseCat, Emily Kassie','Sugarcane',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'MUSIC (ORIGINAL SCORE)','Daniel Blumberg','The Brutalist',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'MUSIC (ORIGINAL SCORE)','Volker Bertelmann','Conclave',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'MUSIC (ORIGINAL SCORE)','Clément Ducol, Camille','Emilia Pérez',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'MUSIC (ORIGINAL SCORE)','John Powell, Stephen Schwartz','Wicked',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'MUSIC (ORIGINAL SCORE)','Kris Bowers','The Wild Robot',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'MUSIC (ORIGINAL SONG)','Clément Ducol, Camille, Jacques Audiard','Emilia Pérez',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'MUSIC (ORIGINAL SONG)','Diane Warren','The Six Triple Eight',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'MUSIC (ORIGINAL SONG)','Abraham Alexander, Adrian Quesada','Sing Sing',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'CINEMATOGRAPHY','Lol Crawley','The Brutalist',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'CINEMATOGRAPHY','Greig Fraser','Dune: Part Two',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'CINEMATOGRAPHY','Paul Guilhaume','Emilia Pérez',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'CINEMATOGRAPHY','Ed Lachman','Maria',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'CINEMATOGRAPHY','Jarin Blaschke','Nosferatu',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'COSTUME DESIGN','Paul Tazewell','Wicked',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'COSTUME DESIGN','Arianne Phillips','A Complete Unknown',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'COSTUME DESIGN','Lisy Christl','Conclave',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'COSTUME DESIGN','Janty Yates, Dave Crossman','Gladiator II',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'COSTUME DESIGN','Linda Muir','Nosferatu',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'FILM EDITING','Sean Baker','Anora',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'FILM EDITING','David Jancso','The Brutalist',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'FILM EDITING','Nick Emerson','Conclave',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'FILM EDITING','Juliette Welfling','Emilia Pérez',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'FILM EDITING','Myron Kerstein','Wicked',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'PRODUCTION DESIGN','Nathan Crowley, Lee Sandales','Wicked',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'PRODUCTION DESIGN','Judy Becker, Patricia Cuccia','The Brutalist',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'PRODUCTION DESIGN','Patrice Vermette, Cynthia Bouchard','Dune: Part Two',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'PRODUCTION DESIGN','Stefania Cella, Carlo Garzini d\'Amo','Conclave',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'PRODUCTION DESIGN','Craig Lathrop, Randy Ottenberg','Nosferatu',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'MAKEUP AND HAIRSTYLING','Pierre-Olivier Persin, Stéphanie Guillon, Marilyne Scarselli','The Substance',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'MAKEUP AND HAIRSTYLING','Mike Marino, David Presto, Crystal Jurado','A Different Man',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'MAKEUP AND HAIRSTYLING','Julia Floch Carbonel, Emmanuel Janvier','Emilia Pérez',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'MAKEUP AND HAIRSTYLING','David White, Traci Loader, Suzanne Stokes-Munton','Nosferatu',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'MAKEUP AND HAIRSTYLING','Frances Hannon, Laura Blount, Sarah Nuth','Wicked',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'SOUND','A Complete Unknown',NULL,false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'SOUND',NULL,'Dune: Part Two',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'SOUND',NULL,'Emilia Pérez',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'SOUND',NULL,'Wicked',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'SOUND',NULL,'The Wild Robot',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2024,2025,97,'DOCUMENTARY SHORT FILM','Molly O\'Brien, Lisa Remington','The Only Girl in the Orchestra',true);

-- 2026

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'BEST PICTURE','Adam Somner, Sara Murphy, Paul Thomas Anderson','One Battle After Another',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'BEST PICTURE','Ed Guiney, Yorgos Lanthimos, Emma Stone','Bugonia',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'BEST PICTURE','Chad Oman, Brad Pitt, Joseph Kosinski','F1',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'BEST PICTURE','Guillermo del Toro, J. Miles Dale, Scott Stuber','Frankenstein',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'BEST PICTURE','Steven Spielberg, Sam Mendes','Hamnet',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'BEST PICTURE','Eli Bush, Timothée Chalamet','Marty Supreme',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'BEST PICTURE','Emilie Lesclaux','The Secret Agent',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'BEST PICTURE','Maria Ekerhovd, Andrea Berentsen Ottmar','Sentimental Value',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'BEST PICTURE','Zinzi Coogler, Sev Ohanian, Ryan Coogler','Sinners',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'BEST PICTURE','Marissa McMahon, Teddy Schwarzman','Train Dreams',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'DIRECTING','Paul Thomas Anderson','One Battle After Another',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'DIRECTING','Chloé Zhao','Hamnet',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'DIRECTING','Josh Safdie','Marty Supreme',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'DIRECTING','Joachim Trier','Sentimental Value',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'DIRECTING','Ryan Coogler','Sinners',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTOR IN A LEADING ROLE','Michael B. Jordan','Sinners',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTOR IN A LEADING ROLE','Timothée Chalamet','Marty Supreme',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTOR IN A LEADING ROLE','Leonardo DiCaprio','One Battle After Another',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTOR IN A LEADING ROLE','Ethan Hawke','Blue Moon',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTOR IN A LEADING ROLE','Wagner Moura','The Secret Agent',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTRESS IN A LEADING ROLE','Jessie Buckley','Hamnet',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTRESS IN A LEADING ROLE','Rose Byrne','If I Had Legs I\'d Kick You',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTRESS IN A LEADING ROLE','Kate Hudson','Song Sung Blue',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTRESS IN A LEADING ROLE','Renate Reinsve','Sentimental Value',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTRESS IN A LEADING ROLE','Emma Stone','Bugonia',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTOR IN A SUPPORTING ROLE','Sean Penn','One Battle After Another',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTOR IN A SUPPORTING ROLE','Benicio del Toro','One Battle After Another',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTOR IN A SUPPORTING ROLE','Jacob Elordi','Frankenstein',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTOR IN A SUPPORTING ROLE','Delroy Lindo','Sinners',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTOR IN A SUPPORTING ROLE','Stellan Skarsgård','Sentimental Value',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTRESS IN A SUPPORTING ROLE','Amy Madigan','Weapons',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTRESS IN A SUPPORTING ROLE','Elle Fanning','Sentimental Value',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTRESS IN A SUPPORTING ROLE','Inga Ibsdotter Lilleaas','Sentimental Value',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTRESS IN A SUPPORTING ROLE','Wunmi Mosaku','Sinners',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ACTRESS IN A SUPPORTING ROLE','Teyana Taylor','One Battle After Another',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'WRITING (ORIGINAL SCREENPLAY)','Ryan Coogler','Sinners',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'WRITING (ORIGINAL SCREENPLAY)','Robert Kaplow','Blue Moon',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'WRITING (ORIGINAL SCREENPLAY)','Jafar Panahi','It Was Just an Accident',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'WRITING (ORIGINAL SCREENPLAY)','Ronald Bronstein, Josh Safdie','Marty Supreme',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'WRITING (ORIGINAL SCREENPLAY)','Eskil Vogt, Joachim Trier','Sentimental Value',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'WRITING (ADAPTED SCREENPLAY)','Paul Thomas Anderson','One Battle After Another',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'WRITING (ADAPTED SCREENPLAY)','Will Tracy','Bugonia',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'WRITING (ADAPTED SCREENPLAY)','Guillermo del Toro','Frankenstein',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'WRITING (ADAPTED SCREENPLAY)','Chloé Zhao, Maggie O\'Farrell','Hamnet',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'WRITING (ADAPTED SCREENPLAY)','Clint Bentley, Greg Kwedar','Train Dreams',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ANIMATED FEATURE FILM','Maggie Kang, Chris Appelhans','KPop Demon Hunters',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ANIMATED FEATURE FILM','Ugo Bienvenu, Félix de Givry','Arco',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ANIMATED FEATURE FILM','Madeline Sharafian, Domee Shi','Elio',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ANIMATED FEATURE FILM',NULL,'Zootopia 2',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'INTERNATIONAL FEATURE FILM','Joachim Trier','Sentimental Value',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'INTERNATIONAL FEATURE FILM','Jafar Panahi','It Was Just an Accident',false);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'INTERNATIONAL FEATURE FILM','Wagner Moura','The Secret Agent',false);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'DOCUMENTARY FEATURE FILM',NULL,'Mr. Nobody Against Putin',true);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'MUSIC (ORIGINAL SCORE)','Ludwig Göransson','Sinners',true);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'MUSIC (ORIGINAL SONG)','EJAE, Mark Sonnenblick','KPop Demon Hunters',true);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'CINEMATOGRAPHY','Autumn Durald Arkapaw','Sinners',true);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'COSTUME DESIGN','Kate Hawley','Frankenstein',true);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'MAKEUP AND HAIRSTYLING',NULL,'Frankenstein',true);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'PRODUCTION DESIGN',NULL,'Frankenstein',true);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'FILM EDITING',NULL,'One Battle After Another',true);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'SOUND',NULL,'F1',true);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'VISUAL EFFECTS',NULL,'Avatar: Fire and Ash',true);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'CASTING','Cassandra Kulukundis','One Battle After Another',true);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'LIVE ACTION SHORT FILM',NULL,'The Singers',true);
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'LIVE ACTION SHORT FILM',NULL,'Two People Exchanging Saliva',true);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'ANIMATED SHORT FILM',NULL,'The Girl Who Cried Pearls',true);

INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,edicao_cerimonia,categoria,nome_indicado,nome_filme,vencedor) VALUES (2025,2026,98,'DOCUMENTARY SHORT FILM',NULL,'All the Empty Rooms',TRUE);







-- Nível 2: Explorando Categorias


-- 2.1 — Quantas indicações existem para cada categoria?

SELECT 
    categoria,
    COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
GROUP BY categoria
ORDER BY total_indicacoes DESC;


-- R: Existem muitos!


-- DIRECTING,469
-- "FILM EDITING",450
-- "ACTOR IN A SUPPORTING ROLE",440
-- "ACTRESS IN A SUPPORTING ROLE",440
-- "DOCUMENTARY (Short Subject)",378
-- "BEST PICTURE",371
-- "DOCUMENTARY (Feature)",345
-- CINEMATOGRAPHY,338
-- "FOREIGN LANGUAGE FILM",315
-- "ART DIRECTION",307
-- "COSTUME DESIGN",295
-- "MUSIC (Original Score)",270
-- SOUND,245
-- "ACTOR IN A LEADING ROLE",240
-- "ACTRESS IN A LEADING ROLE",240
-- ACTRESS,236
-- "MUSIC (Original Song)",235
-- ACTOR,232
-- "SHORT FILM (Live Action)",226
-- "MUSIC (Song)",215
-- "SHORT FILM (Animated)",215
-- "SOUND RECORDING",195
-- "SHORT SUBJECT (Cartoon)",169
-- "CINEMATOGRAPHY (Black-and-White)",161
-- "WRITING (Original Screenplay)",160
-- "VISUAL EFFECTS",155
-- "MUSIC (Music Score of a Dramatic or Comedy Picture)",148
-- "ART DIRECTION (Black-and-White)",138
-- "CINEMATOGRAPHY (Color)",135
-- "HONORARY AWARD",133
-- "MUSIC (Scoring of a Musical Picture)",127
-- "WRITING (Screenplay Written Directly for the Screen)",120
-- "ART DIRECTION (Color)",112
-- "WRITING (Adapted Screenplay)",110
-- "WRITING (Screenplay)",104
-- "OUTSTANDING PRODUCTION",102
-- "ANIMATED FEATURE FILM",99
-- "WRITING (Screenplay--based on material from another medium)",95
-- "SPECIAL EFFECTS",93
-- "SHORT SUBJECT (One-reel)",90
-- "BEST MOTION PICTURE",90
-- MAKEUP,87
-- "SOUND EDITING",86
-- "SOUND MIXING",85
-- "SHORT SUBJECT (Two-reel)",81
-- "COSTUME DESIGN (Black-and-White)",77
-- "COSTUME DESIGN (Color)",77
-- "SHORT SUBJECT (Live Action)",68
-- "WRITING (Screenplay Based on Material from Another Medium)",65
-- "MUSIC (Scoring)",64
-- "WRITING (Story and Screenplay--written directly for the screen)",60
-- "PRODUCTION DESIGN",60
-- "SPECIAL AWARD",56
-- "WRITING (Screenplay Based on Material Previously Produced or Published)",55
-- "WRITING (Original Story)",52
-- "WRITING (Motion Picture Story)",50
-- "SOUND EFFECTS EDITING",47
-- "MAKEUP AND HAIRSTYLING",46
-- "IRVING G. THALBERG MEMORIAL AWARD",45
-- "JEAN HERSHOLT HUMANITARIAN AWARD",44
-- "MUSIC (Original Dramatic Score)",41
-- "ASSISTANT DIRECTOR",35
-- "WRITING (Story and Screenplay)",35
-- "OUTSTANDING MOTION PICTURE",30
-- "MUSIC (Scoring of Music--adaptation or treatment)",30
-- DOCUMENTARY,25
-- "WRITING (Original Motion Picture Story)",25
-- "MUSIC (Song--Original for the Picture)",25
-- "INTERNATIONAL FEATURE FILM",25
-- "DANCE DIRECTION",21
-- "MUSIC (Music Score of a Dramatic Picture)",20
-- "MUSIC (Music Score--substantially original)",20
-- "WRITING (Story and Screenplay--based on factual material or material not previously published or produced)",20
-- "MUSIC (Original Musical or Comedy Score)",20
-- "WRITING (Adaptation)",17
-- "SPECIAL VISUAL EFFECTS",16
-- "SHORT SUBJECT (Comedy)",13
-- "SHORT SUBJECT (Novelty)",12
-- WRITING,11
-- "SOUND EFFECTS",10
-- "MUSIC (Original Music Score)",10
-- "MUSIC (Original Score--for a motion picture [not a musical])",10
-- "MUSIC (Score of a Musical Picture--original or adaptation)",10
-- "WRITING (Screenplay Adapted from Other Material)",10
-- "WRITING (Screenplay Written Directly for the Screen--based on factual material or on story material not previously published or produced)",10
-- "DOCUMENTARY FEATURE FILM",10
-- "DOCUMENTARY SHORT FILM",10
-- "SHORT SUBJECT (Animated)",9
-- "SPECIAL ACHIEVEMENT AWARD (Visual Effects)",9
-- "MUSIC (Scoring: Original Song Score and Adaptation -or- Scoring: Adaptation)",9
-- "OUTSTANDING PICTURE",8
-- "MUSIC (Original Song Score)",8
-- "MUSIC (Scoring: Adaptation and Original Song Score)",8
-- "SHORT SUBJECT (Color)",6
-- "MUSIC (Original Song Score and Its Adaptation or Adaptation Score)",6
-- "MUSIC (Original Song Score and Its Adaptation -or- Adaptation Score)",6
-- "HONORARY FOREIGN LANGUAGE FILM AWARD",5
-- "WRITING (Screenplay--Adapted)",5
-- "WRITING (Screenplay--Original)",5
-- "WRITING (Story and Screenplay--based on material not previously published or produced)",5
-- "SPECIAL ACHIEVEMENT AWARD (Sound Effects Editing)",4
-- "DIRECTING (Dramatic Picture)",3
-- "ENGINEERING EFFECTS",3
-- "UNIQUE AND ARTISTIC PICTURE",3
-- "WRITING (Title Writing)",3
-- "SPECIAL ACHIEVEMENT AWARD",3
-- "MUSIC (Adaptation Score)",3
-- "SHORT FILM (Dramatic Live Action)",3
-- "MUSIC (Original Song Score or Adaptation Score)",3
-- "DIRECTING (Comedy Picture)",2
-- "SPECIAL FOREIGN LANGUAGE FILM AWARD",2
-- "SPECIAL ACHIEVEMENT AWARD (Sound Effects)",1
-- "SPECIAL ACHIEVEMENT AWARD (Sound Editing)",1
-- "GORDON E. SAWYER AWARD",1
-- "AWARD OF COMMENDATION",1



-- 2.2 — Qual categoria teve mais indicações ao longo da história?

SELECT 
    categoria,
    COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
GROUP BY categoria
ORDER BY total_indicacoes DESC
LIMIT 1;

-- R: DIRECTING



-- 2.3 — Qual categoria teve menos indicações?

SELECT 
    categoria,
    COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
GROUP BY categoria
ORDER BY total_indicacoes ASC
LIMIT 1;

-- R: 'SPECIAL ACHIEVEMENT AWARD (Sound Effects)'


-- 2.4 — A partir de que ano a categoria "ACTRESS" deixou de existir?

SELECT MAX(ano_cerimonia) AS ultimo_ano_actress
FROM indicados_ao_oscar
WHERE categoria = 'ACTRESS';

-- R: 1976

-- 2.5 — Quais categorias existiam na primeira cerimônia (1928) e não existem mais hoje?

SELECT DISTINCT categoria
FROM indicados_ao_oscar
WHERE ano_cerimonia = 1928
  AND categoria NOT IN (
      SELECT DISTINCT categoria
      FROM indicados_ao_oscar
      WHERE ano_cerimonia = (SELECT MAX(ano_cerimonia) FROM indicados_ao_oscar)
  )
ORDER BY categoria;

-- R: 
-- ACTOR
-- ACTRESS
-- "ART DIRECTION"
-- "DIRECTING (Comedy Picture)"
-- "DIRECTING (Dramatic Picture)"
-- "ENGINEERING EFFECTS"
-- "OUTSTANDING PICTURE"
-- "SPECIAL AWARD"
-- "UNIQUE AND ARTISTIC PICTURE"
-- "WRITING (Adaptation)"
-- "WRITING (Original Story)"
-- "WRITING (Title Writing)"

-- 2.6 — Liste todas as categorias que contêm a palavra "DIRECTING"

SELECT DISTINCT categoria
FROM indicados_ao_oscar
WHERE categoria LIKE '%DIRECTING%'
ORDER BY categoria;

-- R: Comedy Picture, Dramatic Picture


-- Nível 3: Atores e Atrizes Famosos


-- 3.1 — Quantas vezes Natalie Portman foi indicada?

SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Natalie Portman%';

-- R: 3 vezes


-- 3.2 — Quantos Oscars Natalie Portman ganhou?

SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Natalie Portman%';

-- R: 1

-- 3.3 — Em quais anos e por quais filmes Natalie Portman foi indicada?

SELECT 
    ano_cerimonia,
    nome_filme,
    categoria
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Natalie Portman%'
ORDER BY ano_cerimonia;

-- R: 2005	Closer	ACTRESS IN A SUPPORTING ROLE, 2011	Black Swan	ACTRESS IN A LEADING ROLE, 2017	Jackie	ACTRESS IN A LEADING ROLE

-- 3.4 — Liste todas as indicações de Natalie Portman com ano, categoria, filme e se venceu

SELECT 
    ano_cerimonia,
    categoria,
    nome_filme,
    CASE WHEN vencedor = true THEN 'Sim' ELSE 'Não' END AS venceu
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Natalie Portman%'
ORDER BY ano_cerimonia;

-- R: 2005	ACTRESS IN A SUPPORTING ROLE	Closer	Venceu? Não
-- 2011	ACTRESS IN A LEADING ROLE	Black Swan Venceu?	Sim
-- 2017	ACTRESS IN A LEADING ROLE	Jackie	Venceu? Não

-- 3.5 — Quantas vezes Viola Davis foi indicada?

SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Viola Davis%';

-- R: 4

-- 3.6 — Quantos Oscars Viola Davis ganhou?

SELECT COUNT(*) AS total_oscars
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Viola Davis%'
  AND vencedor = true;

-- R: 1 Oscar

-- 3.8 — Amy Adams já ganhou algum Oscar?
-- R: Não, Amy Adams nunca ganhou o Oscar.
SELECT 
    CASE 
        WHEN COUNT(*) > 0 THEN 'Sim' 
        ELSE 'Não' 
    END AS ganhou_oscar
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Amy Adams%'
  AND vencedor = true;

-- 3.9 — Quantas vezes Amy Adams foi indicada sem ganhar?
SELECT COUNT(*) AS indicacoes_sem_ganhar
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Amy Adams%'
  AND vencedor = false;

-- R: 6


-- 3.10 — Denzel Washington já ganhou algum Oscar?
-- R: Sim.
SELECT 
    CASE 
        WHEN COUNT(*) > 0 THEN 'Sim' 
        ELSE 'Não' 
    END AS ganhou_oscar
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Denzel Washington%'
  AND vencedor = true;

-- 3.11 — Quantas vezes Denzel Washington foi indicado?
SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Denzel Washington%';

-- R: 10

-- 3.12 — Liste todos os Oscars que Denzel Washington ganhou (ano, categoria, filme)
SELECT 
    ano_cerimonia,
    categoria,
    nome_filme
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Denzel Washington%'
  AND vencedor = true
ORDER BY ano_cerimonia;

-- R: 1990	ACTOR IN A SUPPORTING ROLE	Glory
-- 2002	ACTOR IN A LEADING ROLE	Training Day


-- Nível 4: Vencedores Históricos

-- 4.1 — Quem ganhou o primeiro Oscar para Melhor Atriz (ACTRESS)?

SELECT 
    nome_indicado,
    ano_cerimonia,
    nome_filme
FROM indicados_ao_oscar
WHERE categoria = 'ACTRESS'
  AND vencedor = true
ORDER BY ano_cerimonia ASC
LIMIT 1;

-- R: Janet Gaynor, em 1928, pelo filme "7th Heaven".

-- 4.2 — Quem ganhou o primeiro Oscar para Melhor Ator (ACTOR)?

SELECT 
    nome_indicado,
    ano_cerimonia,
    nome_filme
FROM indicados_ao_oscar
WHERE categoria = 'ACTOR'
  AND vencedor = true
ORDER BY ano_cerimonia ASC
LIMIT 1;

-- R: Emil Jannings, em 1928, pelo filme "The Last Command".

-- 4.3 — Quantos vencedores existem ao todo na base de dados?
SELECT COUNT(*) AS total_vencedores
FROM indicados_ao_oscar
WHERE vencedor = true;

-- R: 2465



-- 4.4 — Liste todos os filmes que ganharam o Oscar de Melhor Filme

SELECT 
    ano_cerimonia,
    nome_filme,
    nome_indicado AS produtora_produtor
FROM indicados_ao_oscar
WHERE categoria IN (
    'OUTSTANDING PICTURE',
    'OUTSTANDING PRODUCTION',
    'OUTSTANDING MOTION PICTURE',
    'BEST MOTION PICTURE',
    'BEST PICTURE'
)
  AND vencedor = true
ORDER BY ano_cerimonia;

-- R: 1928	Wings	Paramount Famous Lasky
-- 1929	The Broadway Melody	Metro-Goldwyn-Mayer
-- 1930	All Quiet on the Western Front	Universal
-- 1931	Cimarron	RKO Radio
-- 1932	Grand Hotel	Metro-Goldwyn-Mayer
-- 1933	Cavalcade	Fox
-- 1935	It Happened One Night	Columbia
-- 1936	Mutiny on the Bounty	Metro-Goldwyn-Mayer
-- 1937	The Great Ziegfeld	Metro-Goldwyn-Mayer
-- 1938	The Life of Emile Zola	Warner Bros.
-- 1939	You Can't Take It with You	Columbia
-- 1940	Gone with the Wind	Selznick International Pictures
-- 1941	Rebecca	Selznick International Pictures
-- 1942	How Green Was My Valley	20th Century-Fox
-- 1943	Mrs. Miniver	Metro-Goldwyn-Mayer
-- 1944	Casablanca	Warner Bros.
-- 1945	Going My Way	Paramount
-- 1946	The Lost Weekend	Paramount
-- 1947	The Best Years of Our Lives	Samuel Goldwyn Productions
-- 1948	Gentleman's Agreement	20th Century-Fox
-- 1949	Hamlet	J. Arthur Rank-Two Cities Films
-- 1950	All the King's Men	Robert Rossen Productions
-- 1951	All about Eve	20th Century-Fox
-- 1952	An American in Paris	Arthur Freed, Producer
-- 1953	The Greatest Show on Earth	Cecil B. DeMille, Producer
-- 1954	From Here to Eternity	Buddy Adler, Producer
-- 1955	On the Waterfront	Sam Spiegel, Producer
-- 1956	Marty	Harold Hecht, Producer
-- 1957	Around the World in 80 Days	Michael Todd, Producer
-- 1958	The Bridge on the River Kwai	Sam Spiegel, Producer
-- 1959	Gigi	Arthur Freed, Producer
-- 1960	Ben-Hur	Sam Zimbalist, Producer
-- 1961	The Apartment	Billy Wilder, Producer
-- 1962	West Side Story	Robert Wise, Producer
-- 1963	Lawrence of Arabia	Sam Spiegel, Producer
-- 1964	Tom Jones	Tony Richardson, Producer
-- 1965	My Fair Lady	Jack L. Warner, Producer
-- 1966	The Sound of Music	Robert Wise, Producer
-- 1967	A Man for All Seasons	Fred Zinnemann, Producer
-- 1968	In the Heat of the Night	Walter Mirisch, Producer
-- 1969	Oliver!	John Woolf, Producer
-- 1970	Midnight Cowboy	Jerome Hellman, Producer
-- 1971	Patton	Frank McCarthy, Producer
-- 1972	The French Connection	Philip D'Antoni, Producer
-- 1973	The Godfather	Albert S. Ruddy, Producer
-- 1974	The Sting	Tony Bill, Michael Phillips and Julia Phillips, Producers
-- 1975	The Godfather Part II	Francis Ford Coppola, Producer;  Gray Frederickson and Fred Roos, Co-Producers
-- 1976	One Flew over the Cuckoo's Nest	Saul Zaentz and Michael Douglas, Producers
-- 1977	Rocky	Irwin Winkler and Robert Chartoff, Producers
-- 1978	Annie Hall	Charles H. Joffe, Producer
-- 1979	The Deer Hunter	Barry Spikings, Michael Deeley, Michael Cimino and John Peverall, Producers
-- 1980	Kramer vs. Kramer	Stanley R. Jaffe, Producer
-- 1981	Ordinary People	Ronald L. Schwary, Producer
-- 1982	Chariots of Fire	David Puttnam, Producer
-- 1983	Gandhi	Richard Attenborough, Producer
-- 1984	Terms of Endearment	James L. Brooks, Producer
-- 1985	Amadeus	Saul Zaentz, Producer
-- 1986	Out of Africa	Sydney Pollack, Producer
-- 1987	Platoon	Arnold Kopelson, Producer
-- 1988	The Last Emperor	Jeremy Thomas, Producer
-- 1989	Rain Man	Mark Johnson, Producer
-- 1990	Driving Miss Daisy	Richard D. Zanuck and Lili Fini Zanuck, Producers
-- 1991	Dances With Wolves	Jim Wilson and Kevin Costner, Producers
-- 1992	The Silence of the Lambs	Edward Saxon, Kenneth Utt and Ron Bozman, Producers
-- 1993	Unforgiven	Clint Eastwood, Producer
-- 1994	Schindler's List	Steven Spielberg, Gerald R. Molen and Branko Lustig, Producers
-- 1995	Forrest Gump	Wendy Finerman, Steve Tisch and Steve Starkey, Producers
-- 1996	Braveheart	Mel Gibson, Alan Ladd, Jr. and Bruce Davey, Producers
-- 1997	The English Patient	Saul Zaentz, Producer
-- 1998	Titanic	James Cameron and Jon Landau, Producers
-- 1999	Shakespeare in Love	David Parfitt, Donna Gigliotti, Harvey Weinstein, Edward Zwick and Marc Norman, Producers
-- 2000	American Beauty	Bruce Cohen and Dan Jinks, Producers
-- 2001	Gladiator	Douglas Wick, David Franzoni and Branko Lustig, Producers
-- 2002	A Beautiful Mind	Brian Grazer and Ron Howard, Producers
-- 2003	Chicago	Martin Richards, Producer
-- 2004	The Lord of the Rings: The Return of the King	Barrie M. Osborne, Peter Jackson and Fran Walsh, Producers
-- 2005	Million Dollar Baby	Clint Eastwood, Albert S. Ruddy and Tom Rosenberg, Producers
-- 2006	Crash	Paul Haggis and Cathy Schulman, Producers
-- 2007	The Departed	Graham King, Producer
-- 2008	No Country for Old Men	Scott Rudin, Ethan Coen and Joel Coen, Producers
-- 2009	Slumdog Millionaire	Christian Colson, Producer
-- 2010	The Hurt Locker	Kathryn Bigelow, Mark Boal, Nicolas Chartier and Greg Shapiro, Producers
-- 2011	The King's Speech	Iain Canning, Emile Sherman and Gareth Unwin, Producers
-- 2012	The Artist	Thomas Langmann, Producer
-- 2013	Argo	Grant Heslov, Ben Affleck and George Clooney, Producers
-- 2014	12 Years a Slave	Brad Pitt, Dede Gardner, Jeremy Kleiner, Steve McQueen and Anthony Katagas, Producers
-- 2015	Birdman or (The Unexpected Virtue of Ignorance)	Alejandro G. Iñárritu, John Lesher and James W. Skotchdopole, Producers
-- 2016	Spotlight	Michael Sugar, Steve Golin, Nicole Rocklin and Blye Pagon Faust, Producers
-- 2017	Moonlight	Adele Romanski, Dede Gardner and Jeremy Kleiner, Producers
-- 2018	The Shape of Water	Guillermo del Toro and J. Miles Dale, Producers
-- 2019	Green Book	Jim Burke, Charles B. Wessler, Brian Currie, Peter Farrelly and Nick Vallelonga, Producers
-- 2020	Parasite	Kwak Sin Ae and Bong Joon Ho, Producers
-- 2021	Nomadland	Frances McDormand, Peter Spears, Mollye Asher, Dan Janvey and Chloé Zhao, Producers
-- 2022	CODA	Philippe Rousselet, Fabrice Gianfermi and Patrick Wachsberger, Producers
-- 2023	Everything Everywhere All at Once	Daniel Kwan, Daniel Scheinert and Jonathan Wang, Producers
-- 2024	Oppenheimer	Emma Thomas, Charles Roven and Christopher Nolan, Producers

-- 4.5 — Quantos filmes diferentes já ganharam o Oscar?

SELECT COUNT(DISTINCT nome_filme) AS total_filmes_vencedores
FROM indicados_ao_oscar
WHERE categoria IN (
    'OUTSTANDING PICTURE',
    'OUTSTANDING PRODUCTION',
    'OUTSTANDING MOTION PICTURE',
    'BEST MOTION PICTURE',
    'BEST PICTURE'
)
  AND vencedor = true;
  
--   R: 96

-- Nível 5: Análise de Indicações

-- 5.1 — Quais atores/atrizes foram indicados mais de uma vez?

SELECT 
    nome_indicado
FROM indicados_ao_oscar
WHERE categoria IN (
    'ACTOR', 'ACTRESS',
    'ACTOR IN A LEADING ROLE',
    'ACTRESS IN A LEADING ROLE',
    'ACTOR IN A SUPPORTING ROLE',
    'ACTRESS IN A SUPPORTING ROLE'
)
GROUP BY nome_indicado
HAVING COUNT(*) > 1
ORDER BY nome_indicado ASC;

-- R: Muitos. 
-- Brincadeira... Aqui está: 


-- Adam Driver
-- Agnes Moorehead
-- Akim Tamiroff
-- Al Pacino
-- Alan Arkin
-- Albert Finney
-- Alec Guinness
-- Alice Brady
-- Amy Adams
-- Andrew Garfield
-- Angela Bassett
-- Angela Lansbury
-- Angelina Jolie
-- Anjelica Huston
-- Ann-Margret
-- Anna Magnani
-- Anne Bancroft
-- Anne Baxter
-- Anne Hathaway
-- Anne Revere
-- Annette Bening
-- Anthony Hopkins
-- Anthony Quinn
-- Arthur Kennedy
-- Arthur O'Connell
-- Audrey Hepburn
-- Barbara Stanwyck
-- Barbra Streisand
-- Barry Fitzgerald
-- Basil Rathbone
-- Ben Kingsley
-- Benedict Cumberbatch
-- Benicio Del Toro
-- Bette Davis
-- Bette Midler
-- Beulah Bondi
-- Billy Bob Thornton
-- Bing Crosby
-- Brad Pitt
-- Bradley Cooper
-- Brenda Blethyn
-- Bruce Dern
-- Burgess Meredith
-- Burt Lancaster
-- Carey Mulligan
-- Cary Grant
-- Casey Affleck
-- Cate Blanchett
-- Catherine Keener
-- Cecil Kellaway
-- Celeste Holm
-- Charles Bickford
-- Charles Boyer
-- Charles Coburn
-- Charles Durning
-- Charles Laughton
-- Charlize Theron
-- Cher
-- Christian Bale
-- Christoph Waltz
-- Christopher Plummer
-- Christopher Walken
-- Claire Trevor
-- Clark Gable
-- Claude Rains
-- Claudette Colbert
-- Clifton Webb
-- Clint Eastwood
-- Colin Firth
-- Dame Edith Evans
-- Dame May Whitty
-- Daniel Day-Lewis
-- Daniel Kaluuya
-- Deborah Kerr
-- Debra Winger
-- Denzel Washington
-- Diane Keaton
-- Diane Ladd
-- Dianne Wiest
-- Djimon Hounsou
-- Dustin Hoffman
-- Dyan Cannon
-- Ed Harris
-- Eddie Albert
-- Eddie Redmayne
-- Edmond O'Brien
-- Edmund Gwenn
-- Edward Norton
-- Eileen Heckart
-- Eleanor Parker
-- Elizabeth Taylor
-- Ellen Burstyn
-- Elsa Lanchester
-- Emily Watson
-- Emma Stone
-- Emma Thompson
-- Estelle Parsons
-- Ethan Hawke
-- Ethel Barrymore
-- Fay Bainter
-- Faye Dunaway
-- Frances McDormand
-- Frank Morgan
-- Frank Sinatra
-- Fredric March
-- Gale Sondergaard
-- Gary Cooper
-- Gary Oldman
-- Geena Davis
-- Gena Rowlands
-- Gene Hackman
-- Geoffrey Rush
-- George Arliss
-- George C. Scott
-- George Clooney
-- Geraldine Page
-- Gig Young
-- Gladys Cooper
-- Glenda Jackson
-- Glenn Close
-- Gloria Grahame
-- Gloria Swanson
-- Goldie Hawn
-- Grace Kelly
-- Greer Garson
-- Gregory Peck
-- Greta Garbo
-- Heath Ledger
-- Helen Hayes
-- Helen Hunt
-- Helen Mirren
-- Helena Bonham Carter
-- Henry Fonda
-- Hilary Swank
-- Holly Hunter
-- Hugh Griffith
-- Humphrey Bogart
-- Ian McKellen
-- Ingrid Bergman
-- Irene Dunne
-- Isabelle Adjani
-- J. Carrol Naish
-- J.K. Simmons
-- Jack Lemmon
-- Jack Nicholson
-- Jack Palance
-- Jack Warden
-- Jacki Weaver
-- James Cagney
-- James Dean
-- James Mason
-- James Stewart
-- James Whitmore
-- James Woods
-- Jamie Foxx
-- Jane Alexander
-- Jane Fonda
-- Jane Wyman
-- Janet Gaynor
-- Janet McTeer
-- Jason Robards
-- Javier Bardem
-- Jean Simmons
-- Jeff Bridges
-- Jennifer Jones
-- Jennifer Lawrence
-- Jeremy Renner
-- Jessica Chastain
-- Jessica Lange
-- Jessica Tandy
-- Jill Clayburgh
-- Joan Allen
-- Joan Crawford
-- Joan Cusack
-- Joan Fontaine
-- Joanne Woodward
-- Joaquin Phoenix
-- Jodie Foster
-- Joe Pesci
-- John Garfield
-- John Gielgud
-- John Hurt
-- John Lithgow
-- John Malkovich
-- John Travolta
-- John Wayne
-- Johnny Depp
-- Jon Voight
-- Jonah Hill
-- José Ferrer
-- Joyce Redman
-- Judd Hirsch
-- Jude Law
-- Judi Dench
-- Judy Davis
-- Judy Garland
-- Julia Roberts
-- Julianne Moore
-- Julie Andrews
-- Julie Christie
-- Julie Walters
-- Juliette Binoche
-- Karl Malden
-- Kate Winslet
-- Katharine Hepburn
-- Kathy Bates
-- Keira Knightley
-- Kenneth Branagh
-- Kevin Spacey
-- Kim Stanley
-- Kirk Douglas
-- Laura Dern
-- Laura Linney
-- Laurence Olivier
-- Lee Grant
-- Lee J. Cobb
-- Leonardo DiCaprio
-- Leslie Caron
-- Leslie Howard
-- Liv Ullmann
-- Liza Minnelli
-- Loretta Young
-- Luise Rainer
-- Lynn Redgrave
-- Madeline Kahn
-- Maggie Smith
-- Mahershala Ali
-- Marcello Mastroianni
-- Marcia Gay Harden
-- Margot Robbie
-- Maria Ouspenskaya
-- Marie Dressler
-- Marion Cotillard
-- Marisa Tomei
-- Marjorie Rambeau
-- Mark Ruffalo
-- Marlon Brando
-- Marsha Mason
-- Martin Landau
-- Mary McDonnell
-- Matt Damon
-- Maureen Stapleton
-- Max von Sydow
-- Maximilian Schell
-- Melinda Dillon
-- Melissa Leo
-- Melissa McCarthy
-- Melvyn Douglas
-- Mercedes McCambridge
-- Meryl Streep
-- Michael Caine
-- Michael Fassbender
-- Michael Shannon
-- Michelle Pfeiffer
-- Michelle Williams
-- Mickey Rooney
-- Mildred Dunnock
-- Miranda Richardson
-- Montgomery Clift
-- Monty Woolley
-- Morgan Freeman
-- Naomi Watts
-- Natalie Portman
-- Natalie Wood
-- Nick Nolte
-- Nicolas Cage
-- Nicole Kidman
-- Norma Shearer
-- Octavia Spencer
-- Olivia Colman
-- Olivia de Havilland
-- Patricia Neal
-- Paul Giamatti
-- Paul Muni
-- Paul Newman
-- Paul Scofield
-- Penélope Cruz
-- Peter Falk
-- Peter Finch
-- Peter O'Toole
-- Peter Sellers
-- Peter Ustinov
-- Philip Seymour Hoffman
-- Piper Laurie
-- Rachel Weisz
-- Ralph Fiennes
-- Ralph Richardson
-- Reese Witherspoon
-- Renée Zellweger
-- Rex Harrison
-- Richard Burton
-- Richard Dreyfuss
-- Richard Farnsworth
-- Richard Harris
-- Richard Jenkins
-- Robert De Niro
-- Robert Donat
-- Robert Downey Jr.
-- Robert Duvall
-- Robert Montgomery
-- Robin Williams
-- Rod Steiger
-- Ronald Colman
-- Rooney Mara
-- Rosalind Russell
-- Roy Scheider
-- Russell Crowe
-- Ruth Chatterton
-- Ruth Gordon
-- Ryan Gosling
-- Sal Mineo
-- Sally Field
-- Sally Hawkins
-- Sam Rockwell
-- Samantha Morton
-- Sandra Bullock
-- Saoirse Ronan
-- Scarlett Johansson
-- Sean Penn
-- Shelley Winters
-- Shirley Knight
-- Shirley MacLaine
-- Sidney Poitier
-- Sigourney Weaver
-- Simone Signoret
-- Sissy Spacek
-- Sophia Loren
-- Spencer Tracy
-- Susan Hayward
-- Susan Sarandon
-- Sylvester Stallone
-- Sylvia Miles
-- Talia Shire
-- Teresa Wright
-- Thelma Ritter
-- Thomas Mitchell
-- Tom Courtenay
-- Tom Cruise
-- Tom Hanks
-- Tom Wilkinson
-- Tommy Lee Jones
-- Vanessa Redgrave
-- Victor McLaglen
-- Viggo Mortensen
-- Vincent Gardenia
-- Viola Davis
-- Vivien Leigh
-- Wallace Beery
-- Walter Brennan
-- Walter Huston
-- Walter Matthau
-- Walter Pidgeon
-- Warren Beatty
-- Wendy Hiller
-- Whoopi Goldberg
-- Will Smith
-- Willem Dafoe
-- William Holden
-- William Hurt
-- William Powell
-- Winona Ryder
-- Woody Harrelson


-- 5.2 — Qual ator ou atriz tem o maior número de indicações?

SELECT 
    nome_indicado,
    COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE categoria IN (
    'ACTOR', 'ACTRESS',
    'ACTOR IN A LEADING ROLE',
    'ACTRESS IN A LEADING ROLE',
    'ACTOR IN A SUPPORTING ROLE',
    'ACTRESS IN A SUPPORTING ROLE'
)
GROUP BY nome_indicado
ORDER BY total_indicacoes DESC
LIMIT 5;

-- R: Meryl Streep

-- 5.3 — Quais atores foram indicados mais de 3 vezes, mas nunca ganharam?

SELECT 
    nome_indicado,
    COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE categoria IN (
    'ACTOR', 'ACTRESS',
    'ACTOR IN A LEADING ROLE',
    'ACTRESS IN A LEADING ROLE',
    'ACTOR IN A SUPPORTING ROLE',
    'ACTRESS IN A SUPPORTING ROLE'
)
GROUP BY nome_indicado
HAVING COUNT(*) > 3
   AND SUM(CASE WHEN vencedor = true THEN 1 ELSE 0 END) = 0
ORDER BY total_indicacoes DESC;

-- R: Bastante

-- 5.4 — Artistas indicados em categorias diferentes (ex: ator e diretor)

SELECT 
    nome_indicado,
    COUNT(DISTINCT categoria) AS categorias_distintas,
    GROUP_CONCAT(DISTINCT categoria ORDER BY categoria SEPARATOR ', ') AS categorias
FROM indicados_ao_oscar
WHERE nome_indicado IS NOT NULL
  AND nome_indicado != ''
GROUP BY nome_indicado
HAVING COUNT(DISTINCT categoria) > 1
ORDER BY categorias_distintas DESC
LIMIT 20;

-- R: Muitos...

-- 5.5 — Quantos indicados têm exatamente 1 indicação na história?

SELECT COUNT(*) AS total_com_uma_indicacao
FROM (
    SELECT nome_indicado
    FROM indicados_ao_oscar
    WHERE nome_indicado IS NOT NULL
      AND nome_indicado != ''
    GROUP BY nome_indicado
    HAVING COUNT(*) = 1
) AS subquery;

-- R: 5584

-- 5.6 — Qual o maior número de indicados em um único ano?

SELECT 
    ano_cerimonia,
    COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
GROUP BY ano_cerimonia
ORDER BY total_indicacoes DESC
LIMIT 5;

-- R: 186

-- Nível 6: Análise de Filmes


-- 6.1 — A série Toy Story ganhou Oscars em quais anos?
SELECT 
    ano_cerimonia,
    nome_filme,
    categoria
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Toy Story%'
  AND vencedor = true
ORDER BY ano_cerimonia;

-- R: 2011 e 2020

-- 6.2 — Quantas indicações a franquia Toy Story recebeu no total?

SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Toy Story%';

-- R: 11

-- 6.3 — Em quais categorias os filmes Toy Story foram indicados?

SELECT DISTINCT 
   
    categoria
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Toy Story%'
ORDER BY  categoria;

-- R: ANIMATED FEATURE FILM
-- BEST PICTURE
-- MUSIC (Original Musical or Comedy Score)
-- MUSIC (Original Song)
-- SOUND EDITING
-- WRITING (Adapted Screenplay)
-- WRITING (Screenplay Written Directly for the Screen)

-- 6.4 — Em qual edição do Oscar o filme "Crash" concorreu?

SELECT DISTINCT 
    ano_cerimonia,
    edicao_cerimonia
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash'
ORDER BY ano_cerimonia;

-- R: 78

-- 6.5 — Quantas indicações o filme "Crash" recebeu?

SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash';

-- R: 6

-- 6.6 — "Crash" ganhou o Oscar de Melhor Filme?

SELECT 
    ano_cerimonia,
    categoria,
    nome_filme,
    vencedor
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash'
  AND categoria = 'BEST PICTURE';
  
-- R: Sim, "Crash" ganhou o Oscar de Melhor Filme.

-- 6.7 — O filme "Central do Brasil" aparece no banco de dados?

SELECT *
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Central%'
   OR nome_filme LIKE '%Brazil%';

-- R: Sim, "Central Station" (nome em inglês de "Central do Brasil") aparece como indicado ao Oscar de Melhor Filme Estrangeiro.

-- 6.8 — Quantas indicações "Central do Brasil" recebeu?

SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Central Station%'
   OR nome_filme LIKE '%Central do Brasil%';
-- R: Central do Brasil recebeu 2 indicações
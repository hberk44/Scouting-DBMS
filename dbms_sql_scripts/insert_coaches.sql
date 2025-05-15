use sql_project;
Alter Table Teams AUTO_INCREMENT = 1;
INSERT INTO Coaches (first_name, last_name, team_id, nationality, date_of_birth) VALUES
-- Beşiktaş
('Sergen', 'Yalçın', 1, 'Turkey', '1972-10-05'),

-- Fenerbahçe
('José', 'Mourinho', 2, 'Portugal', '1963-01-26'),

-- Galatasaray
('Okan', 'Buruk', 3, 'Turkey', '1973-10-19'),

-- Manchester United
('Rúben', 'Amorim', 4, 'Portugal', '1985-01-27'),

-- Arsenal
('Mikel', 'Arteta', 5, 'Spain', '1982-03-26'),

-- Manchester City
('Pep', 'Guardiola', 6, 'Spain', '1971-01-18'),

-- Liverpool
('Arne', 'Slot', 7, 'Netherlands', '1978-03-17'),

-- Barcelona
('Hansi', 'Flick', 8, 'Germany', '1965-02-24'),

-- Real Madrid
('Carlo', 'Ancelotti', 9, 'Italy', '1959-06-10'),

-- Atletico Madrid
('Diego', 'Simeone', 10, 'Argentina', '1970-04-28'),

-- Real Sociedad
('Imanol', 'Alguacil', 11, 'Spain', '1971-07-29');
select * from Coaches;


-- Beşiktaş Coach (Sergen Yalçın)
UPDATE Coaches SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/32128-1618769639.jpeg?lm=1' WHERE first_name = 'Sergen' AND last_name = 'Yalçın';

-- Fenerbahçe Coach (José Mourinho)
UPDATE Coaches SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/781-1717168225.jpg?lm=1' WHERE first_name = 'José' AND last_name = 'Mourinho';

-- Galatasaray Coach (Okan Buruk)
UPDATE Coaches SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/23531-1660089259.png?lm=1' WHERE first_name = 'Okan' AND last_name = 'Buruk';

-- Manchester United Coach (Rúben Amorim)
UPDATE Coaches SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/65202-1681307647.jpg?lm=1' WHERE first_name = 'Rúben' AND last_name = 'Amorim';

-- Arsenal Coach (Mikel Arteta)
UPDATE Coaches SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/47620-1681398729.jpg?lm=1' WHERE first_name = 'Mikel' AND last_name = 'Arteta';

-- Manchester City Coach (Pep Guardiola)
UPDATE Coaches SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/5672-1701335303.jpg?lm=1' WHERE first_name = 'Pep' AND last_name = 'Guardiola';

-- Liverpool Coach (Arne Slot)
UPDATE Coaches SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/34822-1704539931.jpg?lm=1' WHERE first_name = 'Arne' AND last_name = 'Slot';

-- Barcelona Coach (Hansi Flick)
UPDATE Coaches SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/67-1730118788.jpg?lm=1' WHERE first_name = 'Hansi' AND last_name = 'Flick';

-- Real Madrid Coach (Carlo Ancelotti)
UPDATE Coaches SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/523-1502276656.jpg?lm=1' WHERE first_name = 'Carlo' AND last_name = 'Ancelotti';

-- Atletico Madrid Coach (Diego Simeone)
UPDATE Coaches SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/2868-1666861792.jpg?lm=1' WHERE first_name = 'Diego' AND last_name = 'Simeone';

-- Real Sociedad Coach (Imanol Alguacil)
UPDATE Coaches SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/33333-1545833695.jpg?lm=1' WHERE first_name = 'Imanol' AND last_name = 'Alguacil';

-- Trabzonspor Coach (Şenol Güneş)
UPDATE Coaches SET image_url='https://img.a.transfermarkt.technology/portrait/big/2332-1585140631.jpeg?lm=1' WHERE first_name = 'Şenol' AND last_name = 'Güneş';

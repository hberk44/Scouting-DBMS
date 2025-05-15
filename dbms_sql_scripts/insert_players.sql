use sql_project;
Alter Table Teams AUTO_INCREMENT = 1;
INSERT INTO Players (first_name, last_name, position, nationality, team_id, age, height, weight, market_value, date_of_birth) VALUES
-- Beşiktaş
('Rafa', 'Silva', 'Forward', 'Portugal', 1, 28, 1.75, 72, 25.0, '1993-05-17'),
('Ciro', 'Immobile', 'Striker', 'Italy', 1, 34, 1.85, 79, 20.0, '1989-02-20'),
('Gedson', 'Fernandes', 'Midfielder', 'Portugal', 1, 25, 1.82, 70, 15.0, '1999-01-09'),

-- Fenerbahçe
('En', 'Nesyri', 'Striker', 'Morocco', 2, 26, 1.92, 85, 18.0, '1997-06-01'),
('Edin', 'Dzeko', 'Striker', 'Bosnia and Herzegovina', 2, 38, 1.93, 82, 12.0, '1986-03-17'),
('Dušan', 'Tadić', 'Midfielder', 'Serbia', 2, 35, 1.87, 76, 18.0, '1988-11-20'),

-- Galatasaray
('Victor', 'Osimhen', 'Striker', 'Nigeria', 3, 25, 1.85, 80, 60.0, '1998-04-29'),
('Mauro', 'Icardi', 'Striker', 'Argentina', 3, 31, 1.81, 76, 30.0, '1993-02-19'),
('Lucas', 'Torreira', 'Midfielder', 'Uruguay', 3, 28, 1.68, 66, 15.0, '1996-02-11'),

-- Manchester United
('Marcus', 'Rashford', 'Forward', 'England', 4, 26, 1.85, 70, 80.0, '1997-10-31'),
('Bruno', 'Fernandes', 'Midfielder', 'Portugal', 4, 30, 1.79, 70, 65.0, '1994-09-08'),
('Rasmus', 'Højlund', 'Striker', 'Denmark', 4, 21, 1.92, 83, 35.0, '2003-02-04'),

-- Arsenal
('Bukayo', 'Saka', 'Winger', 'England', 5, 22, 1.78, 73, 80.0, '2001-09-05'),
('Martin', 'Ødegaard', 'Midfielder', 'Norway', 5, 25, 1.75, 70, 60.0, '1998-12-17'),
('Kai', 'Havertz', 'Midfielder', 'Germany', 5, 25, 1.93, 84, 50.0, '1999-06-11'),

-- Manchester City
('Kevin', 'De Bruyne', 'Midfielder', 'Belgium', 6, 33, 1.81, 70, 90.0, '1991-06-28'),
('Erling', 'Haaland', 'Striker', 'Norway', 6, 24, 1.94, 94, 150.0, '2000-07-21'),
('Rodri', 'Hernández', 'Midfielder', 'Spain', 6, 27, 1.91, 80, 80.0, '1996-06-22'),

-- Liverpool
('Mohamed', 'Salah', 'Winger', 'Egypt', 7, 32, 1.75, 71, 100.0, '1992-06-15'),
('Darwin', 'Nuñez', 'Striker', 'Uruguay', 7, 24, 1.87, 85, 50.0, '1999-06-24'),
('Virgil', 'Van Dijk', 'Defender', 'Netherlands', 7, 33, 1.93, 92, 80.0, '1991-07-08'),

-- Barcelona
('Lamine', 'Yamal', 'Winger', 'Spain', 8, 16, 1.75, 65, 20.0, '2007-07-13'),
('Robert', 'Lewandowski', 'Striker', 'Poland', 8, 35, 1.84, 81, 40.0, '1988-08-21'),
('Raphinha', '', 'Winger', 'Brazil', 8, 27, 1.76, 70, 35.0, '1996-12-14'),

-- Real Madrid
('Kylian', 'Mbappé', 'Forward', 'France', 9, 25, 1.78, 73, 160.0, '1998-12-20'),
('Arda', 'Güler', 'Midfielder', 'Turkey', 9, 18, 1.72, 68, 20.0, '2005-02-25'),
('Jude', 'Bellingham', 'Midfielder', 'England', 9, 21, 1.82, 75, 90.0, '2003-06-29'),

-- Atletico Madrid
('Antoine', 'Griezmann', 'Forward', 'France', 10, 33, 1.76, 73, 40.0, '1991-03-21'),
('Julian', 'Álvarez', 'Striker', 'Argentina', 10, 24, 1.70, 71, 40.0, '2000-01-31'),
('Alexander', 'Sörloth', 'Striker', 'Norway', 10, 28, 1.94, 94, 25.0, '1996-12-05'),

-- Real Sociedad
('Mikel', 'Oyarzabal', 'Winger', 'Spain', 11, 26, 1.80, 75, 35.0, '1997-04-21'),
('Takefusa', 'Kubo', 'Winger', 'Japan', 11, 23, 1.73, 68, 25.0, '2001-06-04'),
('Umar', 'Sadiq', 'Striker', 'Nigeria', 11, 26, 1.91, 85, 15.0, '1997-11-02');
select * from Players;


-- Beşiktaş
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/238055-1727356372.png?lm=1' WHERE first_name = 'Rafa' AND last_name = 'Silva';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/105521-1727355739.png?lm=1' WHERE first_name = 'Ciro' AND last_name = 'Immobile';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/337800-1727354898.png?lm=1' WHERE first_name = 'Gedson' AND last_name = 'Fernandes';

-- Fenerbahçe
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/433049-1728392433.JPG?lm=1' WHERE first_name = 'En' AND last_name = 'Nesyri';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/28396-1728391796.JPG?lm=1' WHERE first_name = 'Edin' AND last_name = 'Dzeko';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/36139-1728391824.JPG?lm=1' WHERE first_name = 'Dušan' AND last_name = 'Tadić';

-- Galatasaray
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/401923-1725459265.png?lm=1' WHERE first_name = 'Victor' AND last_name = 'Osimhen';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/68863-1671105169.png?lm=1' WHERE first_name = 'Mauro' AND last_name = 'Icardi';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/318077-1671110829.png?lm=1' WHERE first_name = 'Lucas' AND last_name = 'Torreira';

-- Manchester United
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/258923-1674473054.jpg?lm=1' WHERE first_name = 'Marcus' AND last_name = 'Rashford';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/240306-1683882766.jpg?lm=1' WHERE first_name = 'Bruno' AND last_name = 'Fernandes';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/610442-1699471458.jpg?lm=1' WHERE first_name = 'Rasmus' AND last_name = 'Højlund';

-- Arsenal
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/433177-1684155052.jpg?lm=1' WHERE first_name = 'Bukayo' AND last_name = 'Saka';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/316264-1678877651.jpg?lm=1' WHERE first_name = 'Martin' AND last_name = 'Ødegaard';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/309400-1683903902.jpg?lm=1' WHERE first_name = 'Kai' AND last_name = 'Havertz';

-- Manchester City
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/88755-1713391485.jpg?lm=1' WHERE first_name = 'Kevin' AND last_name = 'De Bruyne';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/418560-1709108116.png?lm=1' WHERE first_name = 'Erling' AND last_name = 'Haaland';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/357565-1682587890.jpg?lm=1' WHERE first_name = 'Rodri' AND last_name = 'Hernández';

-- Liverpool
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/148455-1727337594.jpg?lm=1' WHERE first_name = 'Mohamed' AND last_name = 'Salah';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/546543-1681827179.jpg?lm=1' WHERE first_name = 'Darwin' AND last_name = 'Nuñez';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/139208-1702049837.jpg?lm=1' WHERE first_name = 'Virgil' AND last_name = 'Van Dijk';

-- Barcelona
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/937958-1720606123.jpg?lm=1' WHERE first_name = 'Lamine' AND last_name = 'Yamal';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/38253-1701118759.jpg?lm=1' WHERE first_name = 'Robert' AND last_name = 'Lewandowski';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/411295-1729754479.png?lm=1' WHERE first_name = 'Raphinha' AND last_name = '';

-- Real Madrid
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/342229-1682683695.jpg?lm=1' WHERE first_name = 'Kylian' AND last_name = 'Mbappé';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/861410-1699472585.jpg?lm=1' WHERE first_name = 'Arda' AND last_name = 'Güler';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/581678-1693987944.jpg?lm=1' WHERE first_name = 'Jude' AND last_name = 'Bellingham';

-- Atletico Madrid
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/125781-1719928503.jpg?lm=1' WHERE first_name = 'Antoine' AND last_name = 'Griezmann';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/576024-1684920938.jpg?lm=1' WHERE first_name = 'Julian' AND last_name = 'Álvarez';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/238407-1716403969.jpg?lm=1' WHERE first_name = 'Alexander' AND last_name = 'Sörloth';

-- Real Sociedad
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/351478-1599987229.jpg?lm=1' WHERE first_name = 'Mikel' AND last_name = 'Oyarzabal';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/405398-1697110254.jpg?lm=1' WHERE first_name = 'Takefusa' AND last_name = 'Kubo';
UPDATE Players SET image_url = 'https://img.a.transfermarkt.technology/portrait/big/337715-1728040426.jpg?lm=1' WHERE first_name = 'Umar' AND last_name = 'Sadiq';

INSERT INTO Players (first_name, last_name, position, nationality, team_id, age, height, weight, market_value, date_of_birth,image_url) VALUES
('Simon', 'Banza', 'Striker', 'France', 12, 27, 1.86, 80, 8.0, '1996-08-13','https://img.a.transfermarkt.technology/portrait/big/344869-1726586877.jpg?lm=1'),
('Muhammad', 'Cham', 'Midfielder', 'Austria', 12, 23, 1.83, 75, 6.0, '2000-01-18','https://img.a.transfermarkt.technology/portrait/big/422281-1725013078.jpg?lm=1'),
('Uğurcan', 'Çakır', 'Goalkeeper', 'Turkey', 12, 27, 1.91, 78, 15.0, '1996-04-05','https://img.a.transfermarkt.technology/portrait/big/292199-1723802510.jpg?lm=1');

select team_name, count(*) as player_count from players p inner join teams t on (t.team_id = p.team_id) group by t.team_name;
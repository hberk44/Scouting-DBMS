use sql_project;
Alter Table Teams AUTO_INCREMENT = 1;


INSERT INTO Awards_Table (player_id, award_name, award_year) VALUES
-- Beşiktaş
(1, 'Player of the Month', 2023), -- Rafa Silva
(2, 'Golden Shoe', 2022), -- Ciro Immobile
(3, 'Midfielder of the Year', 2021), -- Gedson Fernandes

-- Fenerbahçe
(4, 'Best African Player', 2022), -- En Nesyri
(5, 'Veteran Striker Award', 2023), -- Edin Dzeko
(6, 'Playmaker of the Year', 2023), -- Dusan Tadic

-- Galatasaray
(7, 'Golden Boot', 2023), -- Victor Osimhen
(8, 'Best Striker in Europe', 2022), -- Mauro Icardi
(9, 'Midfield Maestro', 2023), -- Lucas Torreira

-- Manchester United
(10, 'Club Player of the Year', 2023), -- Marcus Rashford
(11, 'Captain of the Year', 2023), -- Bruno Fernandes
(12, 'Rising Star', 2023), -- Rasmus Højlund

-- Arsenal
(13, 'Young Player of the Year', 2023), -- Bukayo Saka
(14, 'Best Playmaker', 2022), -- Martin Ødegaard
(15, 'Versatile Player Award', 2023), -- Kai Havertz

-- Manchester City
(16, 'Player of the Season', 2023), -- Kevin De Bruyne
(17, 'Golden Ball Nominee', 2023), -- Erling Haaland
(18, 'Midfielder Excellence Award', 2023), -- Rodri Hernández

-- Liverpool
(19, 'Top Scorer in Premier League', 2022), -- Mohamed Salah
(20, 'Young Talent Award', 2023), -- Darwin Nuñez
(21, 'Defender of the Year', 2023), -- Virgil Van Dijk

-- Barcelona
(22, 'Best Young Player', 2023), -- Lamine Yamal
(23, 'Golden Shoe', 2022), -- Robert Lewandowski
(24, 'Winger of the Year', 2023), -- Raphinha

-- Real Madrid
(25, 'World Player of the Year', 2023), -- Kylian Mbappé
(26, 'Breakthrough Player', 2023), -- Arda Güler
(27, 'Best Midfielder in Europe', 2023), -- Jude Bellingham

-- Atletico Madrid
(28, 'Best Forward in Spain', 2023), -- Antoine Griezmann
(29, 'Emerging Talent Award', 2023), -- Julian Álvarez
(30, 'Top Scorer in La Liga', 2022), -- Alexander Sörloth

-- Real Sociedad
(31, 'Club Player of the Year', 2023), -- Mikel Oyarzabal
(32, 'Best Asian Player', 2022), -- Takefusa Kubo
(33, 'Top Scorer for the Club', 2023); -- Umar Sadiq
select * from awards_table;

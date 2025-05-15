use sql_project;
Alter Table Teams AUTO_INCREMENT = 1;
INSERT INTO Player_Stats (player_id, match_id, goals, assists, yellow_cards, red_cards, minutes_played) VALUES
-- Beşiktaş (1)
(1, 101, 12, 5, 3, 0, 1200),  -- Rafa Silva
(2, 102, 20, 4, 2, 0, 1500),  -- Ciro Immobile
(3, 103, 8, 6, 4, 0, 1100),   -- Gedson Fernandes

-- Fenerbahçe (2)
(4, 104, 15, 3, 1, 0, 1300),  -- En Nesyri
(5, 105, 18, 7, 1, 0, 1400),  -- Edin Džeko
(6, 106, 10, 5, 3, 0, 1250),  -- Dušan Tadić

-- Galatasaray (3)
(7, 107, 22, 5, 2, 0, 1500),  -- Victor Osimhen
(8, 108, 10, 9, 1, 0, 1450),  -- Mauro Icardi
(9, 109, 12, 3, 0, 1, 1400),  -- Lucas Torreira

-- Manchester United (4)
(10, 110, 10, 8, 2, 0, 1300), -- Marcus Rashford
(11, 111, 15, 6, 1, 0, 1450), -- Bruno Fernandes
(12, 112, 5, 2, 3, 0, 1200),  -- Rasmus Højlund

-- Arsenal (5)
(13, 113, 18, 10, 2, 0, 1500), -- Bukayo Saka
(14, 114, 9, 11, 0, 0, 1400),  -- Martin Ødegaard
(15, 115, 8, 6, 3, 0, 1350),   -- Kai Havertz

-- Manchester City (6)
(16, 116, 20, 15, 1, 0, 1600), -- Kevin De Bruyne
(17, 117, 25, 3, 0, 0, 1700),  -- Erling Haaland
(18, 118, 6, 4, 2, 0, 1300),   -- Rodri

-- Liverpool (7)
(19, 119, 30, 10, 1, 0, 1600), -- Mohamed Salah
(20, 120, 12, 7, 3, 0, 1400),  -- Darwin Núñez
(21, 121, 4, 3, 5, 0, 1200),   -- Virgil van Dijk

-- Barcelona (8)
(22, 122, 5, 7, 2, 0, 1100),   -- Lamine Yamal
(23, 123, 28, 6, 0, 0, 1600),  -- Robert Lewandowski
(24, 124, 14, 10, 1, 0, 1500), -- Raphinha

-- Real Madrid (9)
(25, 125, 25, 5, 1, 0, 1600),  -- Kylian Mbappé
(26, 126, 12, 7, 2, 0, 1400),  -- Arda Güler
(27, 127, 18, 4, 0, 0, 1500),  -- Jude Bellingham

-- Atletico Madrid (10)
(28, 128, 20, 10, 1, 0, 1550), -- Antoine Griezmann
(29, 129, 12, 5, 3, 0, 1400),  -- Julian Álvarez
(30, 130, 10, 3, 1, 0, 1300),  -- Alexander Sörloth

-- Real Sociedad (11)
(31, 131, 14, 7, 1, 0, 1500),  -- Mikel Oyarzabal
(32, 132, 6, 5, 2, 0, 1300),   -- Takefusa Kubo
(33, 133, 10, 4, 0, 0, 1200);   -- Umar Sadiq

select * from Player_Stats;
INSERT INTO Player_Stats (player_id, match_id, goals, assists, yellow_cards, red_cards, minutes_played) VALUES
-- Trabzonspor
(34, 134, 10, 3, 1, 0, 1200),  -- Simon Banza
(35, 135, 6, 2, 1, 0, 1100),   -- Muhammad Cham
(36, 136, 15, 6, 0, 0, 1500);  -- Uğurcan Çakır


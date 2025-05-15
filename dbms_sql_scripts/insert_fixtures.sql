use sql_project;
Alter Table Teams AUTO_INCREMENT = 1;

INSERT INTO Fixtures (match_id, match_date, match_time) VALUES
-- Süper Lig (Türkiye)
(1, '2024-01-10', '20:00:00'), -- Beşiktaş vs Fenerbahçe
(2, '2024-01-17', '20:00:00'), -- Fenerbahçe vs Galatasaray
(3, '2024-01-24', '20:00:00'), -- Galatasaray vs Beşiktaş

-- Premier League (İngiltere)
(4, '2024-02-10', '18:30:00'), -- Manchester United vs Arsenal
(5, '2024-02-17', '18:30:00'), -- Arsenal vs Manchester City
(6, '2024-02-24', '18:30:00'), -- Manchester City vs Liverpool
(7, '2024-03-01', '18:30:00'), -- Liverpool vs Manchester United

-- La Liga (İspanya)
(8, '2024-03-10', '22:00:00'), -- Barcelona vs Real Madrid
(9, '2024-03-17', '22:00:00'), -- Real Madrid vs Atletico Madrid
(10, '2024-03-24', '22:00:00'), -- Atletico Madrid vs Real Sociedad
(11, '2024-03-31', '22:00:00'); -- Real Sociedad vs Barcelona
select * from fixtures;
USE sql_project;

INSERT INTO Fixtures (match_id, match_date, match_time) VALUES
-- Süper Lig (Türkiye)
(12, '2024-01-10', '20:00:00'), -- Beşiktaş vs Trabzonspor
(13, '2024-01-15', '20:00:00'); -- Trabzonspor vs Galatasaray


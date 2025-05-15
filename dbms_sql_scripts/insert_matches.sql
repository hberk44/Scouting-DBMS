use sql_project;
Alter Table Teams AUTO_INCREMENT = 1;
INSERT INTO Matches (date, home_team_id, away_team_id, home_score, away_score, league_id) VALUES
-- Süper Lig
('2024-01-10', 1, 2, 2, 1, 3), -- Beşiktaş vs Fenerbahçe
('2024-01-17', 2, 3, 1, 3, 3), -- Fenerbahçe vs Galatasaray
('2024-01-24', 3, 1, 0, 1, 3), -- Galatasaray vs Beşiktaş

-- Premier League
('2024-02-10', 4, 5, 3, 2, 1), -- Manchester United vs Arsenal
('2024-02-17', 5, 6, 2, 2, 1), -- Arsenal vs Manchester City
('2024-02-24', 6, 7, 1, 3, 1), -- Manchester City vs Liverpool
('2024-03-01', 7, 4, 2, 1, 1), -- Liverpool vs Manchester United

-- La Liga
('2024-03-10', 8, 9, 1, 2, 2), -- Barcelona vs Real Madrid
('2024-03-17', 9, 10, 3, 1, 2), -- Real Madrid vs Atletico Madrid
('2024-03-24', 10, 11, 2, 2, 2), -- Atletico Madrid vs Real Sociedad
('2024-03-31', 11, 8, 1, 1, 2); -- Real Sociedad vs Barcelona

select * from matches;
USE sql_project;

INSERT INTO Matches (date, home_team_id, away_team_id, home_score, away_score, league_id) VALUES
-- Süper Lig
('2024-01-10', 1, 2, 2, 1, 3), -- Beşiktaş vs Trabzonspor
('2024-01-15', 12, 3, 4, 3, 3); -- Trabzonspor vs Galatasaray


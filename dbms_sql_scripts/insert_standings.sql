use sql_project;
Alter Table Teams AUTO_INCREMENT = 1;

INSERT INTO Standings (team_id, matches_played, wins, draws, losses, points) VALUES
-- Süper Lig (Türkiye)
(1, 2, 1, 0, 1, 3), -- Beşiktaş: 1 galibiyet, 1 mağlubiyet, 3 puan
(2, 2, 1, 0, 1, 3), -- Fenerbahçe: 1 galibiyet, 1 mağlubiyet, 3 puan
(3, 2, 1, 0, 1, 3), -- Galatasaray: 1 galibiyet, 1 mağlubiyet, 3 puan

-- Premier League (İngiltere)
(4, 3, 1, 1, 1, 4), -- Manchester United: 1 galibiyet, 1 beraberlik, 1 mağlubiyet, 4 puan
(5, 3, 1, 1, 1, 4), -- Arsenal: 1 galibiyet, 1 beraberlik, 1 mağlubiyet, 4 puan
(6, 3, 2, 0, 1, 6), -- Manchester City: 2 galibiyet, 0 beraberlik, 1 mağlubiyet, 6 puan
(7, 3, 1, 0, 2, 3), -- Liverpool: 1 galibiyet, 0 beraberlik, 2 mağlubiyet, 3 puan

-- La Liga (İspanya)
(8, 3, 2, 0, 1, 6), -- Barcelona: 2 galibiyet, 0 beraberlik, 1 mağlubiyet, 6 puan
(9, 3, 1, 1, 1, 4), -- Real Madrid: 1 galibiyet, 1 beraberlik, 1 mağlubiyet, 4 puan
(10, 3, 1, 1, 1, 4), -- Atletico Madrid: 1 galibiyet, 1 beraberlik, 1 mağlubiyet, 4 puan
(11, 3, 1, 0, 2, 3); -- Real Sociedad: 1 galibiyet, 0 beraberlik, 2 mağlubiyet, 3 puan
select * from standings;
USE sql_project;

INSERT INTO Standings (team_id, matches_played, wins, draws, losses, points) VALUES
(12, 2, 1, 0, 1, 3);  -- Trabzonspor: 1 galibiyet, 1 mağlubiyet, 3 puan

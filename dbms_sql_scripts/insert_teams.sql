use sql_project;
Alter Table Teams AUTO_INCREMENT = 1;
INSERT INTO Teams (team_name, league_id, country_id, stadium_id, club_color1, club_color2, founded_year) VALUES
-- Türkiye
('Beşiktaş', 3, 7, 1, 'Black', 'White', 1903), 
('Fenerbahçe', 3, 7, 2, 'Yellow', 'Navy Blue', 1907),
('Galatasaray', 3, 7, 3, 'Yellow', 'Red', 1905),

-- İngiltere
('Manchester United', 1, 6, 4, 'Red', 'White', 1878),
('Arsenal', 1, 6, 5, 'Red', 'White', 1886),
('Manchester City', 1, 6, 6, 'Sky Blue', 'White', 1880),
('Liverpool', 1, 6, 7, 'Red', 'White', 1892),

-- İspanya
('Barcelona', 2, 4, 8, 'Blue', 'Maroon', 1899),
('Real Madrid', 2, 4, 9, 'White', NULL, 1902),
('Atletico Madrid', 2, 4, 10, 'Red', 'White', 1903),
('Real Sociedad', 2, 4, 11, 'Blue', 'White', 1909); 

select* from Teams;

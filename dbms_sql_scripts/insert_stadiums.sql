use sql_project;
Alter Table Teams AUTO_INCREMENT = 1;
INSERT INTO Stadiums (stadium_name, capacity, location) VALUES
('Beşiktaş Tüpraş', 42000, 'Istanbul'),
('Şükrü Saraçoğlu', 50000, 'Istanbul'),
('Rams Park', 52600, 'Istanbul'),
('Old Trafford', 74310, 'Manchester'),
('Emirates', 60260, 'London'),
('Etihad', 53400, 'Manchester'),
('Anfield', 53394, 'Liverpool'),
('Camp Nou', 99354, 'Barcelona'),
('Santiago Bernabéu', 81044, 'Madrid'),
('Metropolitano', 68456, 'Madrid'),
('Anoeta', 39800, 'San Sebastián');
select *from Stadiums;
INSERT INTO Stadiums (stadium_name, capacity, location) 
VALUES ('Papara Park', 40782, 'Trabzon');

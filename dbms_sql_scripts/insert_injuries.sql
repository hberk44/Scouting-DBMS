use sql_project;
Alter Table Teams AUTO_INCREMENT = 1;
INSERT INTO Injuries (player_id, injury_type, start_date, end_date) VALUES
-- Beşiktaş
(2, 'Hamstring Injury', '2024-01-15', '2024-02-15'),  -- Ciro Immobile
(8, 'Knee Ligament Injury', '2023-12-01', '2024-03-01'), -- Robert Lewandowski

-- Fenerbahçe
(4, 'Ankle Sprain', '2024-02-01', '2024-02-20'),  -- En Nesyri
(1, 'Calf Strain', '2023-11-15', NULL),  -- Victor Osimhen (hala sakat)

-- Galatasaray
(5, 'Shoulder Dislocation', '2024-01-10', '2024-01-30'),  -- Mauro Icardi
(22, 'Muscle Fatigue', '2023-12-20', '2024-01-05'), -- Bukayo Saka

-- Manchester United
(7, 'Groin Injury', '2024-02-01', '2024-03-15'),  -- Marcus Rashford
(10, 'Back Pain', '2023-11-01', '2023-11-20'),  -- Bruno Fernandes

-- Arsenal
(22, 'Fractured Arm', '2024-01-05', '2024-03-05'),  -- Bukayo Saka (eski kulübünde sakatlık)
(7, 'Achilles Tendon Injury', '2023-09-10', '2023-12-10'), -- Marcus Rashford (eski kulübünde sakatlık)

-- Manchester City
(18, 'Head Injury', '2024-02-15', NULL),  -- Erling Haaland (hala sakat)
(17, 'Thigh Strain', '2024-01-01', '2024-02-01'), -- Kevin De Bruyne

-- Liverpool
(11, 'Knee Contusion', '2023-12-25', '2024-01-25'),  -- Darwin Nunez
(19, 'Calf Tear', '2024-02-05', '2024-03-05'), -- Virgil Van Dijk

-- Barcelona
(22, 'Hip Injury', '2023-11-01', '2023-12-01'),  -- Lamine Yamal
(12, 'Wrist Injury', '2024-01-20', '2024-02-10'), -- Robert Lewandowski (eski kulübünde sakatlık)

-- Real Madrid
(1, 'Broken Toe', '2023-10-01', '2023-11-15'),  -- Kylian Mbappé
(19, 'Hamstring Tear', '2024-02-01', NULL),  -- Arda Güler (hala sakat)

-- Atletico Madrid
(1, 'Concussion', '2024-01-01', '2024-01-20'),  -- Antoine Griezmann
(21, 'Groin Strain', '2024-02-15', '2024-03-10'), -- Julian Álvarez

-- Real Sociedad
(18, 'Ankle Fracture', '2023-11-10', '2024-03-10'),  -- Mikel Oyarzabal
(21, 'Muscle Tear', '2024-01-01', '2024-02-15'); -- Takefusa Kubo
select* from injuries;



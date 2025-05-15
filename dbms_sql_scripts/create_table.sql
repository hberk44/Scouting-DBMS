use sql_project;
-- 1. Countries Table
CREATE TABLE Countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY, -- Birincil anahtar
    country_name VARCHAR(40) NOT NULL,         -- Ülke adı
    continent VARCHAR(40) NOT NULL             -- Kıta adı
);
select *from Countries;
-- 2. Leagues Table
CREATE TABLE Leagues (
    league_id INT AUTO_INCREMENT PRIMARY KEY, -- Birincil anahtar
    league_name VARCHAR(40) NOT NULL,         -- Lig adı
    country_id INT NOT NULL,                  -- Ligin ülke kimliği (Foreign Key)
    tier INT NOT NULL,                        -- Ligin seviyesi (Tier)
    
    FOREIGN KEY (country_id) REFERENCES Countries(country_id)
);
select * from  Leagues;
-- 3. Stadiums Table
CREATE TABLE Stadiums (
    stadium_id INT AUTO_INCREMENT PRIMARY KEY, -- Birincil anahtar
    stadium_name VARCHAR(40) NOT NULL,         -- Stadyum adı
    capacity INT NOT NULL,                     -- Kapasite
    location VARCHAR(40) NOT NULL              -- Konum
);
select *from Stadiums;
-- 4. Teams Table
CREATE TABLE Teams (
    team_id INT AUTO_INCREMENT PRIMARY KEY,   -- Birincil anahtar
    team_name VARCHAR(40) NOT NULL,           -- Takım adı
    league_id INT NOT NULL,                   -- Ligin kimliği (Foreign Key)
    country_id INT NOT NULL,                  -- Ülke kimliği (Foreign Key)
    stadium_id INT NOT NULL,                  -- Stadyum kimliği (Foreign Key)
    club_color1 VARCHAR(40) NOT NULL,         -- Kulüp renk 1
    club_color2 VARCHAR(40),                  -- Kulüp renk 2
    founded_year INT NOT NULL,                -- Takımın kuruluş yılı
    
    FOREIGN KEY (league_id) REFERENCES Leagues(league_id),
    FOREIGN KEY (country_id) REFERENCES Countries(country_id),
    FOREIGN KEY (stadium_id) REFERENCES Stadiums(stadium_id)
);
select * from Teams;

-- 5. Players Table
CREATE TABLE Players (
    player_id INT AUTO_INCREMENT PRIMARY KEY, -- Birincil anahtar
    first_name VARCHAR(40) NOT NULL,          -- Oyuncunun adı
    last_name VARCHAR(40) NOT NULL,           -- Oyuncunun soyadı
    position VARCHAR(40) NOT NULL,            -- Oyuncunun pozisyonu
    nationality VARCHAR(40) NOT NULL,         -- Uyruğu
    team_id INT NOT NULL,                     -- Takım kimliği (Foreign Key)
    age INT NOT NULL,                         -- Yaşı
    height DOUBLE NOT NULL,                   -- Boyu
    weight INT NOT NULL,                      -- Kilosu
    market_value DOUBLE NOT NULL,             -- Piyasa değeri
    date_of_birth DATE NOT NULL,              -- Doğum tarihi
    
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

ALTER TABLE Players ADD COLUMN image_url VARCHAR(255);

select * from Players;
-- 6. Coaches Table
CREATE TABLE Coaches (
    coach_id INT AUTO_INCREMENT PRIMARY KEY, -- Birincil anahtar
    first_name VARCHAR(40) NOT NULL,         -- Koçun adı
    last_name VARCHAR(40) NOT NULL,          -- Koçun soyadı
    team_id INT NOT NULL,                    -- Takım kimliği (Foreign Key)
    nationality VARCHAR(40) NOT NULL,        -- Uyruğu
    date_of_birth DATE NOT NULL,             -- Doğum tarihi
    
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);
select * from Coaches;
-- 7. Player Profiles Table
CREATE TABLE Player_Profiles (
    profile_id INT AUTO_INCREMENT PRIMARY KEY, -- Birincil anahtar
    player_id INT NOT NULL UNIQUE,             -- Oyuncu kimliği (Foreign Key)
    biography TEXT NOT NULL,                   -- Oyuncunun biyografisi
    twitter_handle VARCHAR(40),                -- Twitter hesabı
    instagram_handle VARCHAR(40),              -- Instagram hesabı
    website VARCHAR(40),                       -- Kişisel web sitesi
    
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);
Alter Table Player_Profiles drop column website;
select * from Player_Profiles;
-- 8. Player Stats Table
CREATE TABLE Player_Stats (
    stat_id INT AUTO_INCREMENT PRIMARY KEY, -- Birincil anahtar
    player_id INT NOT NULL,                 -- Oyuncu kimliği (Foreign Key)
    match_id INT NOT NULL,                  -- Maç kimliği (Foreign Key)
    goals INT NOT NULL,                     -- Gol sayısı
    assists INT NOT NULL,                   -- Asist sayısı
    yellow_cards INT NOT NULL,              -- Sarı kart sayısı
    red_cards INT NOT NULL,                 -- Kırmızı kart sayısı
    minutes_played INT NOT NULL,            -- Oynanan dakika sayısı,
    
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);
select * from Player_Stats;
-- 9. Transfers Table
CREATE TABLE Transfers (
    transfer_id INT AUTO_INCREMENT PRIMARY KEY, -- Birincil anahtar
    player_id INT NOT NULL,                     -- Oyuncunun kimliği (Foreign Key)
    from_team_id INT NOT NULL,                  -- Transferin yapıldığı takım kimliği (Foreign Key)
    to_team_id INT NOT NULL,                    -- Transferin yapıldığı takım kimliği (Foreign Key)
    transfer_date DATE NOT NULL,                -- Transfer tarihi
    transfer_fee DOUBLE NOT NULL,               -- Transfer ücreti
    
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    FOREIGN KEY (from_team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (to_team_id) REFERENCES Teams(team_id)
);
select * from Transfers;
-- 10. Injuries Table
CREATE TABLE Injuries (
    injury_id INT AUTO_INCREMENT PRIMARY KEY, -- Birincil anahtar
    player_id INT NOT NULL,                   -- Oyuncu kimliği (Foreign Key)
    injury_type VARCHAR(40) NOT NULL,         -- Sakatlık türü
    start_date DATE NOT NULL,                 -- Sakatlık başlangıç tarihi
    end_date DATE,                            -- Sakatlık bitiş tarihi
    
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);
select * from Injuries;
-- 11. Awards Table
CREATE TABLE Awards_Table (
    award_id INT AUTO_INCREMENT PRIMARY KEY, -- Birincil anahtar
    player_id INT NOT NULL,                  -- Oyuncu kimliği (Foreign Key)
    award_name VARCHAR(40) NOT NULL,         -- Ödül adı
    award_year INT NOT NULL,                 -- Ödül yılı
    
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);
select * from Awards_Table;

-- 12. Matches Table
CREATE TABLE Matches (
    match_id INT AUTO_INCREMENT PRIMARY KEY,  -- Birincil anahtar
    date DATE NOT NULL,                       -- Maç tarihi
    home_team_id INT NOT NULL,                -- Ev sahibi takım kimliği (Foreign Key)
    away_team_id INT NOT NULL,                -- Deplasman takım kimliği (Foreign Key)
    home_score INT NOT NULL,                  -- Ev sahibi skor
    away_score INT NOT NULL, 				  -- Deplasman skor
    league_id INT NOT NULL,                   -- Lig kimliği (Foreign Key)
    
    FOREIGN KEY (home_team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (away_team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (league_id) REFERENCES Leagues(league_id)
);
select * from Matches;
-- 13. Fixtures Table
CREATE TABLE Fixtures (
    fixture_id INT AUTO_INCREMENT PRIMARY KEY, -- Birincil anahtar
    match_id INT NOT NULL UNIQUE,              -- Maç kimliği (Foreign Key)
    match_date DATE NOT NULL,                  -- Maç tarihi
    match_time TIME NOT NULL,                  -- Maç saati

    FOREIGN KEY (match_id) REFERENCES Matches(match_id)
);
select* from Fixtures;
-- 14. Standings Table
CREATE TABLE Standings (
    standing_id INT AUTO_INCREMENT PRIMARY KEY, -- Birincil anahtar
    team_id INT NOT NULL UNIQUE,                -- Takım kimliği (Foreign Key)
    matches_played INT NOT NULL DEFAULT 0,      -- Oynanan maç sayısı
    wins INT NOT NULL DEFAULT 0,                -- Kazanılan maç sayısı
    draws INT NOT NULL DEFAULT 0,               -- Beraberlik sayısı
    losses INT NOT NULL DEFAULT 0,              -- Kaybedilen maç sayısı
    points INT NOT NULL DEFAULT 0,              -- Toplam puan

    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);
select * from Standings;
use sql_project;
DELIMITER $$

CREATE TRIGGER after_match_insert
AFTER INSERT ON Matches
FOR EACH ROW
BEGIN
    -- Ev sahibi takım kazandıysa
    IF NEW.home_score > NEW.away_score THEN
        -- Ev sahibi takım için galibiyet ve puan ekle
        UPDATE Standings
        SET wins = wins + 1, points = points + 3, matches_played = matches_played + 1
        WHERE team_id = NEW.home_team_id;

        -- Deplasman takımı için mağlubiyet ekle
        UPDATE Standings
        SET losses = losses + 1, matches_played = matches_played + 1
        WHERE team_id = NEW.away_team_id;

    -- Deplasman takımı kazandıysa
    ELSEIF NEW.home_score < NEW.away_score THEN
        -- Deplasman takımı için galibiyet ve puan ekle
        UPDATE Standings
        SET wins = wins + 1, points = points + 3, matches_played = matches_played + 1
        WHERE team_id = NEW.away_team_id;

        -- Ev sahibi takım için mağlubiyet ekle
        UPDATE Standings
        SET losses = losses + 1, matches_played = matches_played + 1
        WHERE team_id = NEW.home_team_id;

    -- Maç berabere biterse
    ELSE
        -- Her iki takım için beraberlik ve puan ekle
        UPDATE Standings
        SET draws = draws + 1, points = points + 1, matches_played = matches_played + 1
        WHERE team_id = NEW.home_team_id;

        UPDATE Standings
        SET draws = draws + 1, points = points + 1, matches_played = matches_played + 1
        WHERE team_id = NEW.away_team_id;
    END IF;
END$$

DELIMITER ;

INSERT INTO Matches (date, home_team_id, away_team_id, home_score, away_score, league_id)
VALUES ('2024-04-01', 1, 2, 3, 3, 2);
select * from leagues;
INSERT INTO Matches (date, home_team_id, away_team_id, home_score, away_score, league_id)
VALUES ('2003-07-13', 11, 10, 0, 4, 3);



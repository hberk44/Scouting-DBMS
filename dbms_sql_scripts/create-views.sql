CREATE VIEW transfer_view AS
SELECT 
    tr.transfer_id AS tid, 
    p.first_name AS ad, 
    p.last_name AS soyad, 
    te_from.team_name AS from_team, 
    te_to.team_name AS to_team,
    tr.transfer_date AS transfer_date,
    tr.transfer_fee AS transfer_fee
FROM 
    Transfers tr
JOIN 
    Players p ON p.player_id = tr.player_id
JOIN 
    Teams te_from ON tr.from_team_id = te_from.team_id
JOIN 
    Teams te_to ON tr.to_team_id = te_to.team_id;
    
create view player_team_view as select p.player_id as p_id, p.first_name as ad, p.last_name as soyad, t.team_id as t_id, t.team_name as takim from Players p INNER JOIN Teams t ON (t.team_id = p.team_id);

select * from player_team_view;

CREATE VIEW standing_view AS
SELECT 
    t.team_name AS Team_Name,
    s.matches_played AS Matches_Played,
    s.wins AS Wins,
    s.draws AS Draws,
    s.losses AS Losses,
    s.points AS Points
FROM 
    Standings s
INNER JOIN 
    Teams t ON s.team_id = t.team_id;
    Select * from standing_view;
    
    select * from players;


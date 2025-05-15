use sql_project;

DELIMITER //

CREATE PROCEDURE TransferPlayer(
    IN p_player_id INT,       -- The player's ID to be transferred
    IN p_new_team_id INT,     -- The new teams ID
    IN p_transfer_fee DOUBLE  -- The transfer fee
)
BEGIN
    -- Declare a variable to store the player's current team
    DECLARE v_current_team_id INT;

    -- Fetch the player's current team ID
    SELECT team_id
    INTO v_current_team_id
    FROM Players
    WHERE player_id = p_player_id;

    -- Check if the player exists
    IF v_current_team_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Player not found';
    END IF;

    -- Check if the new team ID is different from the current team ID
    IF v_current_team_id = p_new_team_id THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Player is already in the specified team';
    END IF;

    -- Update the player's team ID to the new team
    UPDATE Players
    SET team_id = p_new_team_id
    WHERE player_id = p_player_id;

    -- Insert a new record into the Transfers table
    INSERT INTO Transfers (player_id, from_team_id, to_team_id, transfer_date, transfer_fee)
    VALUES (p_player_id, v_current_team_id, p_new_team_id, CURDATE(), p_transfer_fee);
END //

DELIMITER ;

-- CALL TransferPlayer(8, 1, 100000);
-- CALL TransferPlayer(8, 3, 5000000);
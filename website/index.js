const express = require('express');
const mysql = require('mysql2');
const path = require('path');

// Create an express application
const app = express();
const port = 3000; // The port where the server will run

// Create a connection pool to the MySQL database
const pool = mysql.createPool({
  host: 'localhost',      // Database host
  user: 'root',           // MySQL username
  password: '1838Hberk1838.', // MySQL password
  database: 'sql_project', // Database name
  waitForConnections: true,
  connectionLimit: 10,    // Maximum number of connections in the pool
  queueLimit: 0           // No limit for queued connection requests
});

// Middleware to parse JSON data
app.use(express.json());

// Serve static files (CSS, JS, Images) from the "public" folder
app.use(express.static(path.join(__dirname, 'public')));  // Serve entire "public" folder

// Players API
app.get('/api/players', (req, res) => {
  pool.query(`
      SELECT 
          p.player_id,
          p.first_name,
          p.last_name,
          p.position,
          p.nationality,
          t.team_name,
          p.age,
          p.height,
          p.weight,
          p.market_value,
          p.date_of_birth,
          p.image_url as url
      FROM Players p
      JOIN Teams t ON p.team_id = t.team_id;
  `, (err, results) => {
      if (err) {
          console.error('Error fetching players:', err);
          res.status(500).send('Error fetching players');
      } else {
          res.status(200).json(results); 
      }
  });
});

app.get('/api/coaches', (req, res) => {
  pool.query(`
      SELECT 
          c.coach_id,
          c.first_name,
          c.last_name,
          t.team_name,
          c.nationality,
          c.date_of_birth,
          c.image_url -- Fetch image_url from Coaches table
      FROM Coaches c
      JOIN Teams t ON c.team_id = t.team_id;
  `, (err, results) => {
      if (err) {
          console.error('Error fetching coaches:', err);
          res.status(500).send('Error fetching coaches');
      } else {
          res.status(200).json(results); 
      }
  });
});


// Matches API
app.get('/api/matches', (req, res) => {
  pool.query(`
      SELECT 
          m.match_id,
          m.date,
          ht.team_name AS home_team,
          at.team_name AS away_team,
          m.home_score,
          m.away_score,
          l.league_name
      FROM Matches m
      JOIN Teams ht ON m.home_team_id = ht.team_id
      JOIN Teams at ON m.away_team_id = at.team_id
      JOIN Leagues l ON m.league_id = l.league_id
      ORDER BY m.date DESC;
  `, (err, results) => {
      if (err) {
          console.error('Error fetching matches:', err);
          res.status(500).send('Error fetching matches');
      } else {
          res.status(200).json(results); // Return matches as JSON
      }
  });
});

// Transfers API
app.get('/api/transfers', (req, res) => {
  pool.query(`
      SELECT 
          t.transfer_id,
          p.first_name AS player_first_name,
          p.last_name AS player_last_name,
          ft.team_name AS from_team,
          tt.team_name AS to_team,
          t.transfer_date,
          t.transfer_fee
      FROM Transfers t
      JOIN Players p ON t.player_id = p.player_id
      JOIN Teams ft ON t.from_team_id = ft.team_id
      JOIN Teams tt ON t.to_team_id = tt.team_id
      ORDER BY t.transfer_date DESC;
  `, (err, results) => {
      if (err) {
          console.error('Error fetching transfers:', err);
          res.status(500).send('Error fetching transfers');
      } else {
          res.status(200).json(results); // Return transfers as JSON
      }
  });
});


// Stadiums API
app.get('/api/stadiums', (req, res) => {
  pool.query(`
      SELECT 
          stadium_id,
          stadium_name,
          capacity,
          location
      FROM Stadiums
      ORDER BY stadium_name ASC;
  `, (err, results) => {
      if (err) {
          console.error('Error fetching stadiums:', err);
          res.status(500).send('Error fetching stadiums');
      } else {
          res.status(200).json(results); // Return stadiums as JSON
      }
  });
});



app.get('/api/standingview', (req, res) => {
    pool.query('SELECT * FROM standing_view ORDER BY Points DESC;', (err, results) => {
      if (err) {
        console.error('Error fetching data:', err);
        res.status(500).send('Error fetching data');
      } else {
        res.status(200).json(results);  // Return the results as JSON
      }
    });
  });

// Awards API
app.get('/api/awards', (req, res) => {
  pool.query(`
      SELECT 
          a.award_id,
          p.first_name,
          p.last_name,
          a.award_name,
          a.award_year
      FROM Awards_Table a
      JOIN Players p ON a.player_id = p.player_id
      ORDER BY a.award_year DESC, a.award_name ASC;
  `, (err, results) => {
      if (err) {
          console.error('Error fetching awards:', err);
          res.status(500).send('Error fetching awards');
      } else {
          res.status(200).json(results); // Return awards as JSON
      }
  });
});



  app.get('/api/laliga', (req, res) => {
    pool.query('select * from teams where league_id = 2;', (err, results) => {
      if (err) {
        console.error('Error fetching data:', err);
        res.status(500).send('Error fetching data');
      } else {
        res.status(200).json(results);  // Return the results as JSON
      }
    });
  });
 
app.get('/api/bjk', (req, res) => {
  pool.query('select * from teams where league_id = 3;', (err, results) => {
      if (err) {
          console.error('Error fetching data:', err);
          res.status(500).send('Error fetching data');
      } else {
          res.status(200).json(results);
      }
  });
});

app.get('/api/england', (req, res) => {
  pool.query('select * from teams where league_id = 1;', (err, results) => {
      if (err) {
          console.error('Error fetching data:', err);
          res.status(500).send('Error fetching data');
      } else {
          res.status(200).json(results);
      }
  });
});


app.post('/api/addPlayer', (req, res) => {
  const { first_name, last_name, position, nationality, team_name, age, height, weight, market_value, date_of_birth, image_url } = req.body;

  // Find the team ID based on the provided team name
  pool.query(
      'SELECT team_id FROM Teams WHERE team_name = ?',
      [team_name],
      (err, results) => {
          if (err) {
              console.error('Error fetching team ID:', err);
              return res.status(500).send('Error fetching team information.');
          }

          if (results.length === 0) {
              return res.status(400).send('Team not found.');
          }

          const team_id = results[0].team_id;

          // Insert the player into the Players table
          pool.query(
              `
              INSERT INTO Players 
              (first_name, last_name, position, nationality, team_id, age, height, weight, market_value, date_of_birth, image_url)
              VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
              `,
              [first_name, last_name, position, nationality, team_id, age, height, weight, market_value, date_of_birth, image_url],
              (err, results) => {
                  if (err) {
                      console.error('Error adding player:', err);
                      return res.status(500).send('Error adding player.');
                  }

                  res.status(200).send('Player added successfully.');
              }
          );
      }
  );
});

// DELETE player endpoint
app.delete('/api/players/:id', (req, res) => {
  const playerId = req.params.id;
  
  // Start transaction for safe deletion and reset auto increment
  pool.getConnection((err, connection) => {
      if (err) {
          console.error('Error getting connection:', err);
          return res.status(500).json({ message: 'Database connection error.' });
      }

      connection.beginTransaction((transactionErr) => {
          if (transactionErr) {
              connection.release();
              console.error('Error starting transaction:', transactionErr);
              return res.status(500).json({ message: 'Error starting transaction.' });
          }

          // Query 1: Delete the player
          const deleteQuery = 'DELETE FROM Players WHERE player_id = ?';
          connection.execute(deleteQuery, [playerId], (deleteErr, deleteResults) => {
              if (deleteErr) {
                  connection.rollback(() => {
                      connection.release();
                      console.error('Error deleting player:', deleteErr);
                      return res.status(500).json({ message: 'Error deleting player.' });
                  });
              }

              // Query 2: Reset the auto-increment value
              const resetAutoIncrementQuery = 'ALTER TABLE Players AUTO_INCREMENT = 1';
              connection.execute(resetAutoIncrementQuery, (resetErr) => {
                  if (resetErr) {
                      connection.rollback(() => {
                          connection.release();
                          console.error('Error resetting auto increment:', resetErr);
                          return res.status(500).json({ message: 'Error resetting auto increment.' });
                      });
                  }

                  // Commit transaction if both queries succeed
                  connection.commit((commitErr) => {
                      if (commitErr) {
                          connection.rollback(() => {
                              connection.release();
                              console.error('Error committing transaction:', commitErr);
                              return res.status(500).json({ message: 'Error committing transaction.' });
                          });
                      }

                      // Success
                      connection.release();
                      console.log(`Player with ID = ${playerId} deleted and auto-increment reset.`);
                      res.status(200).json({ message: `Player with ID = ${playerId} deleted and auto-increment reset.` });
                  });
              });
          });
      });
  });
});

app.use(express.json());
app.use(express.static(path.join(__dirname, 'public')));

// Start the server and listen on the defined port
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
USE session20_db;
DROP TABLE IF EXISTS ipl_matches;

USE session20_db;

SELECT *
FROM ipl_matches
WHERE team1 = 'Mumbai Indians'
   OR team2 = 'Mumbai Indians';
   
   USE session20_db;

SELECT team, COUNT(*) AS total_matches_played
FROM (
    SELECT team1 AS team FROM ipl_matches
    UNION ALL
    SELECT team2 AS team FROM ipl_matches
) AS all_teams
GROUP BY team
ORDER BY total_matches_played DESC;

USE session20_db;

SELECT *
FROM mi_wins;
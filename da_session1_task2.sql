SELECT COUNT(*) AS total_matches
FROM session1_db.matches;

SELECT team, COUNT(*) AS matches_played
FROM (
    SELECT team1 AS team FROM session1_db.matches
    UNION ALL
    SELECT team2 AS team FROM session1_db.matches
) AS teams
GROUP BY team
ORDER BY matches_played DESC, team;

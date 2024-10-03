/* Wins and losses*/
SELECT SUM(Win) AS Wins, SUM(Loss) AS Loss
FROM Games;

/* Alter tables to change yards and tutchdowns to positions*/
ALTER TABLE Pass
RENAME COLUMN Yds TO Pass_Yds;
ALTER TABLE Pass 
RENAME COLUMN TD TO Pass_TD;

ALTER TABLE Rush
RENAME COLUMN Yds TO Rush_Yds;
ALTER TABLE Rush 
RENAME COLUMN TD TO Rush_TD;

/* Passing Yards per QB*/
SELECT Player, Year, SUM(Pass_Yds) AS Passing 
FROM Pass
GROUP BY Player, Year;

/* Pass yards and tutchdowns per quarter back*/
SELECT pass.Player, pass_Yds, Pass_Td
FROM Pass
JOIN Player_id ON Player_id.player_id = Pass.Player_id;

/* Top 5 highest passing yards*/
SELECT Opponent, Year, Week, Pass_Yds
FROM Pass
WHERE pass_Yds >= 200
LIMIT 5;

/* Top 5 lowest passing yards*/
SELECT Opponent, Year, Week, Pass_Yds
FROM Pass
WHERE pass_Yds <= 200
LIMIT 5;

/* Games where both teams were ranked*/
SELECT *
FROM Games
WHERE "Rank" IS NOT NULL AND Rank_Opp IS NOT NULL; 

/* Conference Games*/
SELECT *
FROM Games
WHERE Conference = "Yes";


/* Pass and Rush attempts per game*/
SELECT pass.Team, pass.Game_id, pass.year, pass.week, pass.Opponent, pass.Player_id AS QB_id, pass.number AS QB_Number, pass.Player AS QB_Player, pass.Rating, pass.Completions, 
pass.attempts, pass.pass_yds, pass.pass_td, pass.int, rush.player AS HB_ID, rush.number AS HB_Number, rush.player AS HB_Player, rush.Carries, rush.Rush_Yds, rush.rush_Td
FROM pass
INNER JOIN rush ON
pass.Team = rush.Team AND 
pass.Game_id = rush.Game_id AND
pass.year = rush.Year AND
pass.Week = rush.week AND 
pass.Opponent = rush.Opponent;

/* Pass and Reciving attempts per game*/
SELECT pass.team, pass.Game_id, pass.year, pass.week, pass.Opponent,pass.Player_id AS QB_id, pass.number AS QB_Number, pass.Player AS QB_Player, 
pass.Rating, pass.Completions, pass.attempts, pass.pass_yds, pass.pass_td, pass.int, rec.player_id AS WR_id, rec.number AS WR_Number, Rec.player AS WR_player, 
rec.rec, rec.Yds, rec.Avg, rec.Td
FROM pass
INNER JOIN Rec ON
pass.team = rec.team AND
pass.Game_id = Rec.Game_id AND
pass.year = rec.year AND
pass.Week = Rec.Week AND
pass.Opponent = Rec.Opponent;

/* Receiver yards and TD percentage per game last season*/
SELECT pass.Game_id, pass.year, pass.week, pass.Opponent,pass.Player_id AS QB_id, pass.number AS QB_Number, pass.Player AS QB_Player, 
pass.Rating, pass.Completions, pass.attempts, pass.pass_yds, pass.pass_td, pass.int, rec.player_id AS WR_id, rec.number AS WR_Number, Rec.player AS WR_player, 
rec.rec, rec.Yds, rec.Avg, rec.Td, (rec.Yds/Pass.pass_yds) AS Percent, (rec.Td/pass.pass_td) AS TD_Percent
FROM pass
INNER JOIN Rec ON
pass.Game_id = Rec.Game_id AND
pass.year = rec.year AND
pass.Week = Rec.Week AND
pass.Opponent = Rec.Opponent
WHERE pass.Year = 2027 AND pass.Player_id = 10;


/* Total receving yards per player*/
SELECT rec.Player, sum(Yds), player_id.Pos
FROM Rec
JOIN Player_id ON rec.player_id = player_id.player_id
GROUP BY rec.Player, player_id.pos
ORDER BY sum(Yds) DESC;




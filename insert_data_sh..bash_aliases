#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

#----FUNCTION 
add_a_team()
{
  TEAM_NAME=$1

  # get team_id
  TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$TEAM_NAME'")

  # if not found
  if [[ -z $TEAM_ID ]]
  then
    # insert team
    INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$TEAM_NAME')")
    if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
    then
      echo Inserted into team, $TEAM_NAME
    fi
    # get new major_id
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$TEAM_NAME'")

  fi

}

#-----CODE 

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNERGOALS OPPONENTGOALS
do
  if [[ $WINNER != "winner" ]]
  then
    add_a_team "$WINNER"
    WINNER_ID=$TEAM_ID

    add_a_team "$OPPONENT"
    OPPONENT_ID=$TEAM_ID

    # insert game
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES ($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNERGOALS,$OPPONENTGOALS)")
    if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
    then
      echo Inserted into game
    fi

  fi
  



done
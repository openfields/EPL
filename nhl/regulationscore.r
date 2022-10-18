regulationscore <- function(game){
# goal tabulation to get score at end of regulation

# get event type = goal
which(game$event=="Goal") -> goals

# reg goals
which(game$period[goals] <= 3) -> rgoals
lastgoal <- goals[max(rgoals)]

return(c(game$home_score[lastgoal], game$away_score[lastgoal]))

return(score)
}

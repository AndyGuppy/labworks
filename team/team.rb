class Team

def initialize(team_name, players, coach)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = 0
end

def team_name
  return @team_name
end

def players
  return @players
end

def coach
  return @coach
end

def points
  return @points
end

def set_coach(new_coach)
  @coach = new_coach
end

def add_player(player)
  @players << player
end

def game_status(status)
  status == "win" ? @points += 1 : @points
end

end
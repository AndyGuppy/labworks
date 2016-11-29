require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')

class TeamSpec < MiniTest::Test

def test_can_create_team
team = Team.new("Hogwarts", ["Jimmy", "Bob", "Beth"], "Potter")
assert_equal(Team, team.class)
end

def test_get_team_name
team = Team.new("CodeClan", ["fred", "rick", "Beth"], "bobby")
assert_equal("CodeClan", team.team_name)
end

def test_get_coach
team = Team.new("codeclan", ["fred", "rick", "Beth"], "Matthew")
assert_equal("Matthew", team.coach)
end

def test_get_player
team = Team.new("codebase", ["micky", "minnie"], "Matthew")
assert_equal(["micky", "minnie"], team.players)
end

def test_set_coach
team = Team.new("codebase", ["micky", "minnie"], "Matthew")
team.set_coach("Donald Duck")
assert_equal("Donald Duck", team.coach)
end

def test_add_new_player
team = Team.new("codebase", ["micky", "minnie"], "Matthew")
team.add_player("Donald Duck")
assert_equal("Donald Duck", team.players.last)
end

def test_add_a_win
team = Team.new("codebase", ["micky", "minnie"], "Matthew")
team.game_status("win")
team.game_status("win")
assert_equal(2, team.points)
end

def test_add_a_lose
team = Team.new("codebase", ["micky", "minnie"], "Matthew")
team.game_status("lose")
assert_equal(0, team.points)
end

end
class Player
    #initializes name and score
    def initialize(name, score)
        @name = name
        @score = score
    end

    #returns player
    def get_player
        return @name
    end

    #returns score
    def get_score
        return @score
    end
end

#main function
def main()
    print_player(randomize_players())
end

#randomizes array/players with score from 10 to 300
def randomize_players()
    player_number = 0
    players_array = Array.new

    for i in (1..50)
        player_number = player_number + 1
        player_score = rand(10..300)
        player_info = Player.new("Player " + player_number.to_s, player_score)
        players_array.push(player_info)
    end
    return players_array
end

#prints the array of players using puts with name and score
def print_player(players_array)
    for player in players_array
        name = player.get_player
        score = player.get_score.to_s
        puts "Ready " + name + "!" + " Score: " + score
    end
end

main()
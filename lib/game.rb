class Game
  attr_reader :player_1, :player_2, :attacker, :to_be_attacked

  def initialize( player1, player2)
    @player_1 = player1
    @player_2 = player2
    @attacker = @player_1
    @to_be_attacked = @player_2
  end

	def attack(player)
    player.receive_damage
    switch_turn
  end

private
  def switch_turn
  	if attacker == player_1
			@attacker = player_2
			@to_be_attacked = player_1
		else
			@attacker = player_1
			@to_be_attacked = player_2
		end
  end
end
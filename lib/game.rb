class Game
  attr_reader :p1, :p2, :current_player
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @players = [p1, p2]
    @current_player = p2
    # @p1 = p1
    # @p2 = p2
  end

  def attack(player)
    player.attacked
  end

  def swap_turns
    @current_player = @players.reverse!.last
  end

end

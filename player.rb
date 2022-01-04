class Player
  attr_accessor :chances, :has_lost, :name
  def initialize(name)
    @name = name
    @chances = 3
  end
  @has_lost = false
end
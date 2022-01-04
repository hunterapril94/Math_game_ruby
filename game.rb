class Game
  def initialize(players)
    @count = 0
    @player1 = players[0]
    @player2 = players[1]
  end
  def gameplay
    while @player1.chances > 0 && @player2.chances > 0
      active_player = @player1
      
      if @count%2 == 0
        active_player = @player1
      elsif @count%2 == 1
        active_player = @player2
      end
      puts "NEW TURN"
      puts "#{active_player.name} it is your turn"
      question = Question.new
      score_change = question.answer_correct
      if score_change == true
        active_player.chances -= 1
        puts "#{active_player.name}: Seriously? No!"
      else
        puts "#{active_player.name}: Yes! You are correct!"
      end
      puts "P1: #{@player1.chances}/3 P2: #{@player2.chances}/3"
      @count += 1
    end
    puts "GAME OVER"
    if @player1.chances == 0
      @player1.has_lost = true
      puts "Player 2 wins with a score of #{@player2.chances}/3"
    elsif @player2.chances == 0
      @player2.has_lost = true
      puts "Player 1 wins with a score of #{@player1.chances}/3"
    end
  end
end
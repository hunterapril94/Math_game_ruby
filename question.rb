class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end
  def answer_correct
    response = true;
    puts "What does #{@num1.to_s} plus #{@num2.to_s} equal?"
    player_answer = gets.chomp
    if player_answer == @answer
      response = false
    end
    return response
  end
end
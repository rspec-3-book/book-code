class GuessingGame
  def initialize(input: $stdin, output: $stdout, random: Random.new)
    @input, @output, @random = input, output, random
    @number = random.rand(1..100)
    @guess = nil
  end

  def play
    5.downto(1) do |remaining_guesses|
      break if @guess == @number
      @output.puts "Pick a number 1-100 (#{remaining_guesses} guesses left):"
      @guess = @input.gets.to_i
      check_guess
    end

    announce_result
  end

private

  def check_guess
    if @guess > @number
      @output.puts "#{@guess} is too high!"
    elsif @guess < @number
      @output.puts "#{@guess} is too low!"
    end
  end

  def announce_result
    if @guess == @number
      @output.puts 'You won!'
    else
      @output.puts "You lost! The number was: #{@number}"
    end
  end
end

# play the game if this file is run directly
GuessingGame.new.play if __FILE__.end_with?($PROGRAM_NAME)

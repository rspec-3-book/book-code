class GuessingGame
  def play
    @number = rand(1..100)
    @guess = nil

    5.downto(1) do |remaining_guesses|
      break if @guess == @number
      puts "Pick a number 1-100 (#{remaining_guesses} guesses left):"
      @guess = gets.to_i
      check_guess
    end

    announce_result
  end

private

  def check_guess
    if @guess > @number
      puts "#{@guess} is too high!"
    elsif @guess < @number
      puts "#{@guess} is too low!"
    end
  end

  def announce_result
    if @guess == @number
      puts 'You won!'
    else
      puts "You lost! The number was: #{@number}"
    end
  end
end

# play the game if this file is run directly
GuessingGame.new.play if __FILE__.end_with?($PROGRAM_NAME)

require 'guessing_game'
require 'stringio'

RSpec.describe GuessingGame do
  it 'exits on the first guess if it is correct' do
    output = play(34, [34])

    expect(output).to eq unindent(<<-EOS)
      Pick a number 1-100 (5 guesses left):
      You won!
    EOS
  end

  it 'tells the user if their guess is too high' do
    output = play(63, [90, 63])

    expect(output).to eq unindent(<<-EOS)
      Pick a number 1-100 (5 guesses left):
      90 is too high!
      Pick a number 1-100 (4 guesses left):
      You won!
    EOS
  end

  it 'tells the user if their guess is too low' do
    output = play(63, [50, 63])

    expect(output).to eq unindent(<<-EOS)
      Pick a number 1-100 (5 guesses left):
      50 is too low!
      Pick a number 1-100 (4 guesses left):
      You won!
    EOS
  end

  specify 'the player loses if they miss 5 gueses' do
    output = play(63, [50, 75, 62, 69, 65])

    expect(output).to eq unindent(<<-EOS)
      Pick a number 1-100 (5 guesses left):
      50 is too low!
      Pick a number 1-100 (4 guesses left):
      75 is too high!
      Pick a number 1-100 (3 guesses left):
      62 is too low!
      Pick a number 1-100 (2 guesses left):
      69 is too high!
      Pick a number 1-100 (1 guesses left):
      65 is too high!
      You lost! The number was: 63
    EOS
  end

  specify 'the player wins if they guess correct on the 5th try' do
    output = play(65, [50, 75, 62, 69, 65])

    expect(output).to eq unindent(<<-EOS)
      Pick a number 1-100 (5 guesses left):
      50 is too low!
      Pick a number 1-100 (4 guesses left):
      75 is too high!
      Pick a number 1-100 (3 guesses left):
      62 is too low!
      Pick a number 1-100 (2 guesses left):
      69 is too high!
      Pick a number 1-100 (1 guesses left):
      You won!
    EOS
  end

  def play(rand_number, guesses)
    input = StringIO.new(guesses.join("\n"))
    output = StringIO.new
    random = instance_double(Random, rand: rand_number)

    GuessingGame.new(input: input, output: output, random: random).play
    output.string
  end

  def unindent(s)
    s.gsub(/^#{s.scan(/^[ \t]+(?=\S)/).min}/, '')
  end
end

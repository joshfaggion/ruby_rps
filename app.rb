# This ruby program is a simple code piece that will run
# an even simpler code piece in the terminal.

require('pry')

class RPS
  def wins?(object, argument)
    @object = object
    @argument = argument
    if @object == "rock" && @argument == "scissors"
      true
    elsif @object == "rock" && @argument == "paper"
      false
    elsif @object == "scissors" && @argument == "paper"
      true
    elsif @object == "scissors" && @argument == "rock"
      false
    elsif @object == "paper" && @argument == "rock"
      true
    elsif @object == "paper" && @argument == "scissors"
      false
    elsif @object === @argument
      "tie"
    end
  end
end

puts "Welcome to the ultimate battle between object and argument!"

puts "Player One, put in rock, paper, or scissors."
answer_one = gets.chomp

puts "Player two! Type in rock, paper, or scissors."

answer_two = gets.chomp
game = RPS.new()
if game.wins?(answer_one, answer_two) == true
  puts "Player One is the winner!"
elsif game.wins?(answer_one, answer_two) == false
  puts "Player Two is the winner!"
else
 puts "Its a tie!"
end

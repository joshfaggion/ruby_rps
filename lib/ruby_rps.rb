class RPS
  def wins?(object, argument)
    @object = object
    @argument = argument
    if @object == @argument
      "tie"
    elsif @object == "rock" && @argument == "scissors"
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
    end
  end
end

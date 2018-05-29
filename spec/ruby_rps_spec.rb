require('rspec')
require('pry')
require('ruby_rps')


describe("#ruby_rps?") do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "scissors")).to(eq(true))
  end
  it("returns true if scissors is the object and paper is the argument") do
    game = RPS.new()
    expect(game.wins?("scissors", "paper")).to(eq(true))
  end
  it("returns true if paper is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins?("paper", "rock")).to(eq(true))
  end
  it("returns false if paper is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("paper", "scissors")).to(eq(false))
  end
  it("returns false if scissors is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins?("scissors", "rock")).to(eq(false))
  end
  it("returns false if rock is the object and paper is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "paper")).to(eq(false))
  end
  it("returns string that says tie if both object and argument are identical") do
    game = RPS.new()
    expect(game.wins?("rock", "rock")).to(eq("tie"))
  end
end

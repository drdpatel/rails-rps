class GameController < ApplicationController

  def play_rock
   @moves = ["rock","paper","scissors"]

    @comp.move = moves.sample
    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else @comp_move == "scissors"
      @outcome = "won"  
    end

    render({ :template => "paths/rock" })
  end

    def get_home
    end

    render({ :template => "paths/home" })
end

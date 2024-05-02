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
      render({ :template => "paths/home" })
    end

    def play_scissors
      moves = ["rock", "paper", "scissors"]

      @comp_move = moves.sample
    
      if @comp_move == "scissors"
        @outcome = "tied"
      elsif @comp_move == "rock"
        @outcome = "lost"
      else @comp_move == "paper"
        @outcome = "won"  
      end
    
    end

    def play_paper
      moves = ["rock", "paper", "scissors"]

      @comp_move = moves.sample
    
      if @comp_move == "paper"
        @outcome = "tied"
      elsif @comp_move == "scissors"
        @outcome = "lost"
      else @comp_move == "rock"
        @outcome = "won"  
      end
    end

end

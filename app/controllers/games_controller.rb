class GamesController < ApplicationController
before_action :set_game, only: %i[show delete]

def new
  @game = Game.new
end

def create
  @game = Game.new(game_params)
  @game.user = current_user
   if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end

end

def show; end

def index
  @games = Game.all
end

private

  def game_params
    params.require(:game).permit(:name, :category, :price, :number_of_players, :description)
  end

  def set_game
    @game = Game.find(params[:game_id])
  end


end

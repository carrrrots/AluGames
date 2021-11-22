class GamesController < ApplicationController
  before_action :set_game, only: %i[show delete]
  # def index
  #   @games = Games.all
  # end

  # def show
  #   @game = Game.find(game_params)
  # end

  def new
    @Game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  # def delete
  #   @restaurant.destroy
  # end

  # private

  # def game_params
  #   params.require(:games).permit(:name, :category, :price, :number_of_players, :description, :available)
  # end

  # def set_game
  #   @game = Game.find(params[:id])
  end
end

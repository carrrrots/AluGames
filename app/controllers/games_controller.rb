class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update destroy]

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @rent = Rent.new
  end

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

  def destroy
    @game.destroy
     redirect_to games_path
  end

  def edit;  end


  def update
    if @game.update(game_params)
      redirect_to @game, notice: 'Game was successfully updated.'
    else
      render :edit
    end
  end


  private

  def game_params
    params.require(:game).permit(:name, :category, :price, :number_of_players, :description, :photo)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end

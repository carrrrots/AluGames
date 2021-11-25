class RentsController < ApplicationController
  # before_action :set_rent, only: [:show, :destroy]

  def new
    @game = Game.find(params[:game_id])
    @rent = Rent.new
  end

  def create
    @game = Game.find(params[:game_id])
    @game.update(available: false)
    @rent = Rent.new(rent_params)
    @rent.game = @game
    @rent.user = current_user
    if @rent.save
      redirect_to game_path(@game), notice: "Game rented!"
    else
      redirect_to game_path(@game), notice: "Couldn't rent this game"
    end
  end

  private

  def rent_params
    params.require(:rent).permit(:start_date, :end_date)
  end
end

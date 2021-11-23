class RentsController < ApplicationController
  before_action :set_rent, only: [:show, :destroy]

  def show
    @rent = Rent.find(params[:id])
  end

  def new
    @rent = Rent.new
  end

  def create
    @rent = Rent.new(rent_params)
    @rent.user = current_user
    if @rent.save
      redirect_to rent_path(@rent)
    else
      render :new
    end
  end

  def destroy
    @rent.destroy
     redirect_to rents_path
  end

   private

  def rent_params
    params.require(:rent).permit(:period_of_time)
  end

  def set_rent
    @rent = Rent.find(params[:id])
  end
end

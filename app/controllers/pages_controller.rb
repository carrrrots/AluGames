class PagesController < ApplicationController
   skip_before_action :authenticate_user!, only: :home

  def home
    @games = Game.order("RANDOM()")
  end

  def dashboard
  end
end

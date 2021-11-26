class PagesController < ApplicationController
  def home
    @games = Game.order("RANDOM()")
  end

  def dashboard
  end
end

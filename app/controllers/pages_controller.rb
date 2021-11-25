class PagesController < ApplicationController
  def home
    @games = Game.order("RANDOM()")
  end
end

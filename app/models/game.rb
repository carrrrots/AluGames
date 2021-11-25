class Game < ApplicationRecord
  belongs_to :user

  GAME_CATEGORIES = %w[Euro Party Legacy Campaign].freeze
  NUMBER_OF_PLAYERS = %w[1 2 3 4 5 6+].freeze
  has_one_attached :photo
end

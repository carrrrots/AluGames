class Game < ApplicationRecord
  belongs_to :user

  GAME_CATEGORIES = %w[Euro Party Legacy Campaign].freeze
  has_one_attached :photo
end

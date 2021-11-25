class Game < ApplicationRecord
  belongs_to :user
  has_many :rents, dependent: :delete_all

  GAME_CATEGORIES = %w[Euro Party Legacy Campaign].freeze
  has_one_attached :photo
end

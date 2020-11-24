class Library < ApplicationRecord
  belongs_to :user
  has_many :library_games
  has_many :games, through: :library_games
end

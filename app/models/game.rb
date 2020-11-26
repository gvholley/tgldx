class Game < ApplicationRecord
  has_many :library_games
  has_many :libraries, through: :library_games
  has_many :users, through: :libraries
  serialize :data
  attr_accessor :game_id

  def fetch_data
    game = GiantBomb::Game.detail(game_id)
    self.data = Hash[game.instance_variables.map { |var| [var.to_s[1..-1], game.instance_variable_get(var)] } ]
  end

  def to_giant_bomb_game
    GiantBomb::Game.new(data)
  end
end

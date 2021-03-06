class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :library
  has_many :games, through: :library

  def has_game?(game)
    games.where(id: game.id).exist?
  end

  def build_library
    return if library.present?
    self.library = Library.new
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :libraries
  has_many :games, through: :libraries

  def has_game?(game)
    games.where(id: game.id).exist?
  end
end

class LibraryGame < ApplicationRecord
  belongs_to :library
  belongs_to :game
  has_one :user, through: :library
end

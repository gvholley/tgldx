class CreateLibraryGames < ActiveRecord::Migration[6.0]
  def change
    create_table :library_games do |t|

      t.timestamps
    end
  end
end

class AddColumnToLibrarygame < ActiveRecord::Migration[6.0]
  def change
    add_column :library_games, :game_id, :integer
  end
end

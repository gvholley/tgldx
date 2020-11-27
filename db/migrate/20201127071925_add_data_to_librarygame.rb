class AddDataToLibrarygame < ActiveRecord::Migration[6.0]
  def change
    add_column :library_games, :data, :text
  end
end

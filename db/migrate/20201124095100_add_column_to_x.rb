class AddColumnToX < ActiveRecord::Migration[6.0]
  def change
    add_column :library_games, :library_id, :integer
  end
end

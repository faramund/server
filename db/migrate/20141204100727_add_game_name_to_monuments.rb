class AddGameNameToMonuments < ActiveRecord::Migration
  def change
    add_column :monuments, :game_name, :string
  end
end

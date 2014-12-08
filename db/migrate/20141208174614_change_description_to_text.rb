class ChangeDescriptionToText < ActiveRecord::Migration
  def change
    change_column :monuments, :description, :text
  end
end

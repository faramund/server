class AddImageToMonuments < ActiveRecord::Migration
  def change
    add_column :monuments, :image, :string
  end
end

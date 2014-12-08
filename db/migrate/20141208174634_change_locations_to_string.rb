class ChangeLocationsToString < ActiveRecord::Migration
  def change
    change_column :monuments, :latitude, :string
    change_column :monuments, :longitude, :string
  end
end

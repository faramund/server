class CreateMonuments < ActiveRecord::Migration
  def change
    create_table :monuments do |t|
      t.string :name
      t.string :description
      t.string :locality
      t.decimal :latitude, precision: 12, scale: 2
      t.decimal :longitude, precision: 12, scale: 2

      t.timestamps
    end
  end
end

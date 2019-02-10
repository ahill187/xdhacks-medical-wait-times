class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :gender
      t.float :latitude
      t.float :longitude
      t.string :address_one
      t.string :address_two
      t.boolean :insurance
      t.string :symptoms
      t.timestamps
    end
  end
end

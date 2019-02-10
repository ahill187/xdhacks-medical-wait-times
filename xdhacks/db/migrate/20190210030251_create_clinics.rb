class CreateClinics < ActiveRecord::Migration[5.2]
  def change
    create_table :clinics do |t|
      t.float :latitude
      t.float :longitude
      t.string :hours
      t.string :doctors_folder
      t.string :status
      t.timestamps
    end
  end
end

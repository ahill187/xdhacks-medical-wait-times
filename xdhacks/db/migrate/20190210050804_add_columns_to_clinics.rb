class AddColumnsToClinics < ActiveRecord::Migration[5.2]
  def change
      add_column :clinics, :clinic_name, :string
      add_column :clinics, :email, :string
      add_column :clinics, :password_digest, :string
  end
end

class AddSignInToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :first_name, :string
    add_column :patients, :last_name, :string
    add_column :patients, :email, :string
    add_column :patients, :password_digest, :string

  end
end

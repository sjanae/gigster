class RemoveEmailFromBands < ActiveRecord::Migration
  def change
    remove_column :bands, :email, :string
    remove_column :bands, :password_digest, :string
  end
end

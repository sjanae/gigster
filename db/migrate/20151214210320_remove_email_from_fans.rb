class RemoveEmailFromFans < ActiveRecord::Migration
  def change
    remove_column :fans, :email, :string
    remove_column :fans, :password_digest, :string
  end
end

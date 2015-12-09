class AddGenreAndAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :genre, :string
    add_column :users, :avatar_url, :string
  end
end

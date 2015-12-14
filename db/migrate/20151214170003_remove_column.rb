class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :users, :location
    remove_column :users, :genre
    remove_column :users, :type
    remove_column :users, :band
    remove_column :users, :fan
    remove_column :users, :name
  end
end

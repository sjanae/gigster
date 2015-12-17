class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :pledges, :price, :count
  end
end

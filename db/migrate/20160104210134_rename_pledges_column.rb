class RenamePledgesColumn < ActiveRecord::Migration
  def change
    rename_column :pledges, :count, :quantity
  end
end

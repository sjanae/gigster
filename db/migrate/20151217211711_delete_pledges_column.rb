class DeletePledgesColumn < ActiveRecord::Migration
  def change
    remove_column :pledges, :user_id
  end
end

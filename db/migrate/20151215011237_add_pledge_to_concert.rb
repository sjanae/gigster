class AddPledgeToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :pledge_id, :integer
  end
end

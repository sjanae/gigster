class AddPledgeKeyToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :pledge_key, :integer
  end
end

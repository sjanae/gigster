class AddColumnToPledges < ActiveRecord::Migration
  def change
    add_column :pledges, :fan_id, :integer
  end
end

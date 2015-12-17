class AddColumnsToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :performance_date, :datetime
    add_column :concerts, :funding_goal, :decimal
  end
end

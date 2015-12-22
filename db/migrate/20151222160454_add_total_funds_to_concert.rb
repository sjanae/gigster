class AddTotalFundsToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :total_funds, :integer
  end
end

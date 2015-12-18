class AddColumnToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :successful, :boolean, default: false
  end
end

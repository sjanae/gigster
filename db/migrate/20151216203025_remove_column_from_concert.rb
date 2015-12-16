class RemoveColumnFromConcert < ActiveRecord::Migration
  def change
    remove_column :concerts, :success, :boolean
  end
end

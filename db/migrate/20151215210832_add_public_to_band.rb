class AddPublicToBand < ActiveRecord::Migration
  def change
    add_column :bands, :public, :boolean, default: false
  end
end

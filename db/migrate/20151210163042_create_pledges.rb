class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.string :user_id
      t.string :concert_id
      t.decimal :price

      t.timestamps null: false
    end
  end
end

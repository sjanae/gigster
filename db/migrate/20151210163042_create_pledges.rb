class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      
      t.references :concert, index: true, foreign_key: true # attaches concert id to pledges
      t.decimal :price

      t.timestamps null: false
    end
  end
end

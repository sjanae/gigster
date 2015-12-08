class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :location
      t.integer :fan_id
      t.integer :band_id
      t.boolean :fan, default: false
      t.boolean :band, default: false

      t.timestamps null: false
    end
  end
end

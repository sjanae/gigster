class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :password_digest
      t.string :name
      t.string :genre
      t.string :avatar_url
      t.string :location
      t.string :email

      t.timestamps null: false
    end
  end
end

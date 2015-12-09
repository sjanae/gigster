class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.string :email
      t.string :password_digest
      t.string :location
      t.string :avatar_url

      t.timestamps null: false
    end
  end
end

class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :location
      t.string :venue
      t.boolean :success

      t.timestamps null: false
    end
  end
end

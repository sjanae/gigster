class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|

      t.references :user, type: :band, index: true, foreign_key: true # attaches band to concert
      t.string :location
      t.string :venue
      t.string :success, default: "pending"

      t.timestamps null: false
    end
  end
end

class Sandwiches < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwiches do |t|
      t.string :ingredients
      t.datetime :date
      t.string :location
      t.string :price
      t.string :tasting_notes

      t.timestamps
    end
  end
end

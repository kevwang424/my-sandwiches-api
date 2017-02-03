class Eaters < ActiveRecord::Migration[5.0]
  def change
    create_table :eaters do |t|
      t.string :name

      t.timestamps
    end
  end
end

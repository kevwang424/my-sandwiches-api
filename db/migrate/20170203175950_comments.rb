class Comments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :sandwich_id
      t.integer :eater_id

      t.timestamps
    end
  end
end

class EaterSandwiches < ActiveRecord::Migration[5.0]
  def change
    create_table :eater_sandwiches do |t|
      t.integer :eater_id
      t.integer :sandwich_id

      t.timestamps
    end
  end
end

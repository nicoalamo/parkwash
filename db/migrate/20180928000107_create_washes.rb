class CreateWashes < ActiveRecord::Migration[5.2]
  def change
    create_table :washes do |t|
      t.date :wash_date
      t.references :vehicle, foreign_key: true
      t.integer :wash_type
      t.references :washer, foreign_key: true
      t.integer :wash_discount

      t.timestamps
    end
  end
end

class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :patent
      t.string :size
      t.string :type
      t.string :brand
      t.string :model
      t.string :color
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

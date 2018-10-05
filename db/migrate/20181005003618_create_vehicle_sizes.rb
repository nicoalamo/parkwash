class CreateVehicleSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_sizes do |t|
      t.string :vehicle_size_code
      t.string :vehicle_size_name
      t.string :vehicle_size_description

      t.timestamps
    end
  end
end

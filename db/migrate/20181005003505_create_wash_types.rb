class CreateWashTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :wash_types do |t|
      t.string :wash_type_code
      t.string :wash_type_name
      t.string :wash_type_description

      t.timestamps
    end
  end
end

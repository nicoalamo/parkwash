class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :place_name
      t.string :place_address
      t.string :place_commune
      t.string :place_city
      t.string :place_contact_name
      t.string :place_contact_cellphone
      t.string :place_contact_email

      t.timestamps
    end
  end
end

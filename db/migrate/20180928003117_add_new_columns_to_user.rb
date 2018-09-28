class AddNewColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :cell_phone, :string
    add_column :users, :birthday, :date
    add_column :users, :rut, :string
    add_column :users, :city, :string
    add_column :users, :place, :string
    add_column :users, :company, :string
    add_column :users, :credit_card_registered_status, :boolean
    add_column :users, :transbank_id, :integer
  end
end

class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :bank
      t.date :statement_date
      t.text :description
      t.integer :credit
      t.integer :commission
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

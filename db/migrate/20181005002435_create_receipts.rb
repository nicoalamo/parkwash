class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|
      t.date :receipt_creation_date
      t.integer :receipt_informed_gross_amount
      t.integer :receipt_total_discount_amount
      t.string :receipt_sii_status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

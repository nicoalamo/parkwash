class CreateCreditNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_notes do |t|
      t.date :credit_note_creation_date
      t.integer :credit_note_informed_gross_amount
      t.string :credit_note_sii_status
      t.references :receipt, foreign_key: true

      t.timestamps
    end
  end
end

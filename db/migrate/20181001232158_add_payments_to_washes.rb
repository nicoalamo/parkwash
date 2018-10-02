class AddPaymentsToWashes < ActiveRecord::Migration[5.2]
  def change
    add_reference :washes, :payment, index: true
    add_foreign_key :washes, :payments
  end
end

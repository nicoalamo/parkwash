class ChangeTransbankidType < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :transbank_id, :string
  end
end

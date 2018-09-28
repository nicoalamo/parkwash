class ChangeVechicleSizeToInteger < ActiveRecord::Migration[5.2]
  def change

    change_column :vehicles, :size, :integer

  end
end

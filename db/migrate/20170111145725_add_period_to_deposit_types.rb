class AddPeriodToDepositTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :deposit_types, :period, :integer
  end
end

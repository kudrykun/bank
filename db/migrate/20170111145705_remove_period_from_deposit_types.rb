class RemovePeriodFromDepositTypes < ActiveRecord::Migration[5.0]
  def change
    remove_column :deposit_types, :period, :date
  end
end

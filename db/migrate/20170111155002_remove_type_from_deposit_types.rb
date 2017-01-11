class RemoveTypeFromDepositTypes < ActiveRecord::Migration[5.0]
  def change
    remove_column :deposit_types, :type, :string
  end
end

class AddTitleToDepositTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :deposit_types, :title, :string
  end
end

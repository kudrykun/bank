class CreateDepositTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :deposit_types do |t|
      t.string :type
      t.float :rate
      t.date :period

      t.timestamps
    end
  end
end

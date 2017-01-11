class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.decimal :balance
      t.references :holder, foreign_key: true
      t.references :deposit_type, foreign_key: true

      t.timestamps
    end
  end
end

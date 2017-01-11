class CreateOperations < ActiveRecord::Migration[5.0]
  def change
    create_table :operations do |t|
      t.decimal :amount
      t.string :meta_name
      t.date :date
      t.references :operator, foreign_key: true
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end

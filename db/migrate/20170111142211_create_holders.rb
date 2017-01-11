class CreateHolders < ActiveRecord::Migration[5.0]
  def change
    create_table :holders do |t|
      t.string :name
      t.string :surename
      t.string :passport

      t.timestamps
    end
  end
end

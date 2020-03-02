class CreateAutoexpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :autoexpenses do |t|
      t.integer :price
      t.text :description
      t.string :travaux
      t.string :designation
      t.datetime :billed_at

      t.timestamps
    end
  end
end

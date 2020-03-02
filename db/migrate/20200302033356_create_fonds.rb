class CreateFonds < ActiveRecord::Migration[5.2]
  def change
    create_table :fonds do |t|
      t.string :titre
      t.integer :montant

      t.timestamps
    end
  end
end

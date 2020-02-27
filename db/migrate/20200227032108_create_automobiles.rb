class CreateAutomobiles < ActiveRecord::Migration[5.2]
  def change
    create_table :automobiles do |t|
      t.string :marque
      t.string :modele
      t.string :couleur
      t.string :matricule
      t.string :prix
      t.belongs_to :administrateur, foreign_key: true

      t.timestamps
    end
  end
end

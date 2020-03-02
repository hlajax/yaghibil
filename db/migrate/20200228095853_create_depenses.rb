class CreateDepenses < ActiveRecord::Migration[5.2]
  def change
    create_table :depenses do |t|
      t.string :designation
      t.text :travaux
      t.string :prix
      t.datetime :billed_at
      t.belongs_to :automobile, foreign_key: true

      t.timestamps
    end
  end
end

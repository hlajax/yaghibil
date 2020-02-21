class CreateIncategories < ActiveRecord::Migration[5.2]
  def change
    create_table :incategories do |t|
      t.string :titre
      t.text :description

      t.timestamps
    end
  end
end

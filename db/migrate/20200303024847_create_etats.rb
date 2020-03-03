class CreateEtats < ActiveRecord::Migration[5.2]
  def change
    create_table :etats do |t|
      t.string :titre

      t.timestamps
    end
  end
end

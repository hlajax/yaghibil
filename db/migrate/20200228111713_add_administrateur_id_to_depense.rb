class AddAdministrateurIdToDepense < ActiveRecord::Migration[5.2]
  def change
    add_column :depenses, :administrateur_id, :integer
  end
end

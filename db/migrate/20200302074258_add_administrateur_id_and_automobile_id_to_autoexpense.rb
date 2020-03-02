class AddAdministrateurIdAndAutomobileIdToAutoexpense < ActiveRecord::Migration[5.2]
  def change
    add_column :autoexpenses, :administrateur_id, :integer
    add_column :autoexpenses, :automobile_id, :integer
  end
end

class AddAdministrateurIdAndAutomobileIdToAutoincome < ActiveRecord::Migration[5.2]
  def change
    add_column :autoincomes, :administrateur_id, :integer
    add_column :autoincomes, :automobile_id, :integer
  end
end

class AddAdministrateurIdToIncome < ActiveRecord::Migration[5.2]
  def change
    add_column :incomes, :administrateur_id, :integer
  end
end

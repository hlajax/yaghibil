class AddAdministrateurIdToExpense < ActiveRecord::Migration[5.2]
  def change
    add_column :expenses, :administrateur_id, :integer
  end
end

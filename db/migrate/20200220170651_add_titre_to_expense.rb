class AddTitreToExpense < ActiveRecord::Migration[5.1]
  def change
    add_column :expenses, :titre, :string
  end
end

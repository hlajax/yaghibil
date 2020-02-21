class AddIncategoryIdToIncome < ActiveRecord::Migration[5.2]
  def change
    add_column :incomes, :incategory_id, :integer
  end
end

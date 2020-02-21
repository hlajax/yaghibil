class AddSourceIdToIncome < ActiveRecord::Migration[5.2]
  def change
    add_column :incomes, :source_id, :integer
  end
end

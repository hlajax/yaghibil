class AddSourceIdToExpense < ActiveRecord::Migration[5.1]
  def change
    add_column :expenses, :source_id, :integer
  end
end

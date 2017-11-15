class AddBilledAtToExpenses < ActiveRecord::Migration[5.1]
  def change
    add_column :expenses, :billed_at, :datetime
  end
end

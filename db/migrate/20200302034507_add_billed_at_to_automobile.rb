class AddBilledAtToAutomobile < ActiveRecord::Migration[5.2]
  def change
    add_column :automobiles, :billed_at, :datetime
  end
end

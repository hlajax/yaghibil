class AddEtatIdToAutomobile < ActiveRecord::Migration[5.2]
  def change
    add_column :automobiles, :etat_id, :integer
  end
end

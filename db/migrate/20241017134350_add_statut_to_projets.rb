class AddStatutToProjets < ActiveRecord::Migration[7.0]
  def change
    add_column :projets, :statut, :string, default: "non financé"
  end
end

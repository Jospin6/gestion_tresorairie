class CreateHistoriqueApports < ActiveRecord::Migration[7.0]
  def change
    create_table :historique_apports do |t|
      t.decimal :montant_recu
      t.references :membre_conseil, null: false, foreign_key: true
      t.date :date_jour

      t.timestamps
    end
  end
end

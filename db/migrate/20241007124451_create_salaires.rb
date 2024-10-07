class CreateSalaires < ActiveRecord::Migration[7.0]
  def change
    create_table :salaires do |t|
      t.references :employe, null: false, foreign_key: true
      t.integer :mois
      t.integer :annee
      t.decimal :montant
      t.date :date_jour
      t.references :apport_local, null: false, foreign_key: true

      t.timestamps
    end
  end
end

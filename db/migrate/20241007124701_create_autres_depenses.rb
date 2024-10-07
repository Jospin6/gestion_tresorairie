class CreateAutresDepenses < ActiveRecord::Migration[7.0]
  def change
    create_table :autres_depenses do |t|
      t.references :apport_local, null: false, foreign_key: true
      t.string :titre
      t.decimal :montant
      t.text :description
      t.date :date_jour

      t.timestamps
    end
  end
end

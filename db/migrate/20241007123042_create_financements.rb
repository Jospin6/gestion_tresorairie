class CreateFinancements < ActiveRecord::Migration[7.0]
  def change
    create_table :financements do |t|
      t.references :partenaire, null: false, foreign_key: true
      t.references :projet, null: false, foreign_key: true
      t.decimal :montant
      t.string :num_bordereau
      t.string :banque

      t.timestamps
    end
  end
end

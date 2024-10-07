class CreateActivites < ActiveRecord::Migration[7.0]
  def change
    create_table :activites do |t|
      t.string :titre
      t.text :description
      t.date :date_debut
      t.date :date_fin
      t.references :projet, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateProjets < ActiveRecord::Migration[7.0]
  def change
    create_table :projets do |t|
      t.string :titre
      t.text :description
      t.date :date_debut
      t.date :date_fin

      t.timestamps
    end
  end
end

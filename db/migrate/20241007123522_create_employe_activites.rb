class CreateEmployeActivites < ActiveRecord::Migration[7.0]
  def change
    create_table :employe_activites do |t|
      t.references :employe, null: false, foreign_key: true
      t.references :activite, null: false, foreign_key: true

      t.timestamps
    end
  end
end

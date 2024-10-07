class CreatePartenaires < ActiveRecord::Migration[7.0]
  def change
    create_table :partenaires do |t|
      t.string :nom
      t.string :contact
      t.string :mail
      t.text :adresse
      t.string :type_partenaire

      t.timestamps
    end
  end
end

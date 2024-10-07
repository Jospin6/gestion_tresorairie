class CreateEmployes < ActiveRecord::Migration[7.0]
  def change
    create_table :employes do |t|
      t.string :nom
      t.string :post_nom
      t.string :contact
      t.string :mail
      t.text :adresses

      t.timestamps
    end
  end
end

class CreateApportLocals < ActiveRecord::Migration[7.0]
  def change
    create_table :apport_locals do |t|
      t.decimal :montant

      t.timestamps
    end
  end
end

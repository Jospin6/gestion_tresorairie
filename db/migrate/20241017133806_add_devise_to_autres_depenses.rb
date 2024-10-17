class AddDeviseToAutresDepenses < ActiveRecord::Migration[7.0]
  def change
    add_column :autres_depenses, :devise, :string
  end
end

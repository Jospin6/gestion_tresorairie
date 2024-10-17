class RemoveApportLocalIdFromAutresDepenses < ActiveRecord::Migration[7.0]
  def change
    remove_column :autres_depenses, :apport_local_id, :integer
  end
end

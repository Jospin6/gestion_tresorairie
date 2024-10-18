class AddPhotoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :photo, :string, :null =>  true
    #Ex:- :null => false
  end
end

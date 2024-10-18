class AddPhotoToPartenaires < ActiveRecord::Migration[7.0]
  def change
    add_column :partenaires, :photo, :string
  end
end

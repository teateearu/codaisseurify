class AddBioToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :bio, :string
  end
end

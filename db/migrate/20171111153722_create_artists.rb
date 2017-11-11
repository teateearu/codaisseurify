class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.boolean :alive

      t.timestamps
    end
  end
end

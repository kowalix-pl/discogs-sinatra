class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.integer :rating
      t.timestamps null: 
    end
  end
end

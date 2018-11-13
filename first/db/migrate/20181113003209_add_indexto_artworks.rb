class AddIndextoArtworks < ActiveRecord::Migration[5.2]
  def change
    add_index :artworks, :title
    add_index :artworks, :artist_id
    add_index :users, :username
  end
end

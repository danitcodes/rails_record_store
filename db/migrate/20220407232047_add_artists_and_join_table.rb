# alphabetical order is V important
class AddArtistsAndJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_artists, id: false do |t|
      t.belongs_to :artist, index: true
      # `t.column :artist_id, :integer` is built-in with a Rails `belongs_to` method
      t.belongs_to :album, index: true
      # `index: true` can make for faster row lookup in a database (not always)
      t.timestamps
    end
  end
end

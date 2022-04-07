class AddArtistsAndJoinTable < ActiveRecord::Migration[5.2]
  # alphabetical order is V important
  def change
    create_table :artists do |t|
      t.string :name # equivalent to `t.column (:name, :string)``
      t.timestamps
    end

    # `id: false` added because join table does not have a primary key
    # identifying relationships between models is what is important w/ join tables
    create_table :albums_artists, id: false do |t|
      t.belongs_to :artist, index: true
      # `t.column :artist_id, :integer` is built-in with a Rails `belongs_to` method
      t.belongs_to :album, index: true
      # `index: true` can make for faster row lookup in a database (not always)
    end
  end
end

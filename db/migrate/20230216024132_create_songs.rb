class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.column(:name, :string)
      t.column(:lyricsc, :string)
      t.column(:album_id, :integer)

      t.timestamps
    end
  end
end

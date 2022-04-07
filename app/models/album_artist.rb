class AlbumArtist < ApplicationRecord
  # naming convention dictates first class be singular, second class plural
  belongs_to :artist
  belongs_to :album
end

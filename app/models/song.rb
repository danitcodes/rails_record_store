class Song < ApplicationRecord
  belongs_to :album

  attr_accessor :lyrics
end

class Song < ActiveRecord::Base
  has_many :song_entries
  has_many :playlists, through: :song_entries
end

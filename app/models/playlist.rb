class Playlist < ActiveRecord::Base
  belongs_to :user
  has_many :song_entries
  has_many :songs, through: :song_entries
end

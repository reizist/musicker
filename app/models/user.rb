class User < ActiveRecord::Base
  has_many :playlists
  validates :provider, presence: true
  validates :uid, presence: true
  validates :screen_name, presence: true

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.screen_name = auth['info']['nickname']
      user.name = auth['info']['name']
      user.icon = auth['info']['image']
    end
  end

  BASE_URL = 'http://ws.audioscrobbler.com/2.0/?'

  def get_user_info
    url = "http://ws.audioscrobbler.com/2.0/?method=user.getinfo&user=#{self.uid}&api_key=f2021dbda43cd3fcf835dfd607c03124&format=json"
    JsonParser::parse(url)
  end

  def get_recent_songs
    url = "http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=#{self.uid}&api_key=f2021dbda43cd3fcf835dfd607c03124&format=json"
    JsonParser::parse(url)
  end

end

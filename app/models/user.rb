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


end

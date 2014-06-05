module CallAPI
  BASE_URL = 'http://ws.audioscrobbler.com/2.0/?'
  API_KEY = 'f2021dbda43cd3fcf835dfd607c03124'

  def make_url(uid, method)
    "#{BASE_URL}method=#{method}&user=#{uid}&api_key=#{API_KEY}&format=json"
  end

  module_function :make_url
end

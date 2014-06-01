class SessionsController < ApplicationController

  API_KEY = 'f2021dbda43cd3fcf835dfd607c03124'
  API_SECRET = 'd725ed6474f61d59b5797f73489e4709'
  def new
    lastfm = Lastfm.new(API_KEY, API_SECRET)
    token = lastfm.auth.get_token
  end

  def create
  end

  def destroy
  end
end

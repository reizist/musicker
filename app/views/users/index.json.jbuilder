json.array!(@users) do |user|
  json.extract! user, :id, :lastfm_id, :name, :email, :password, :password_confirmation
  json.url user_url(user, format: :json)
end

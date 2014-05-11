json.array!(@playlists) do |playlist|
  json.extract! playlist, :id, :list_name, :user_id
  json.url playlist_url(playlist, format: :json)
end

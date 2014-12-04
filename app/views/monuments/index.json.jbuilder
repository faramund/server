json.array!(@monuments) do |monument|
  json.extract! monument, :id, :name, :description, :image, :game_name, :locality, :latitude, :longitude
  json.url monument_url(monument, format: :json)
end

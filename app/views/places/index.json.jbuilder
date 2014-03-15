json.array!(@places) do |place|
  json.extract! place, :id, :title, :latitude, :longitude,:slug, :user_id, :place_type_id, :content, :address
  json.url place_url(place, format: :json)
end

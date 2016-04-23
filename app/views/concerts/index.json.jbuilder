json.array!(@concerts) do |concert|
  json.extract! concert, :id, :day, :hour
  json.url concert_url(concert, format: :json)
end

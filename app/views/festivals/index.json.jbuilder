json.array!(@festivals) do |festival|
  json.extract! festival, :id, :name, :place, :startDate, :endDate, :description, :image, :remote_image_url
  json.url festival_url(festival, format: :json)
end

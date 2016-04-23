json.array!(@festivals) do |festival|
  json.extract! festival, :id, :name, :place, :startDate, :endDate, :description, :picture
  json.url festival_url(festival, format: :json)
end

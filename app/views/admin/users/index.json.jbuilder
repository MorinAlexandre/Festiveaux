json.array!(@users) do |user|
  json.extract! user, :id, :pseudo, :lastName, :firstName, :email, :city, :status
  json.url user_url(user, format: :json)
end

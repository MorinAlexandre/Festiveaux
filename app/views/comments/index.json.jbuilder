json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :opinion
  json.url comment_url(comment, format: :json)
end

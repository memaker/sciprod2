json.array!(@interests) do |interest|
  json.extract! interest, :id, :name, :author_id
  json.url interest_url(interest, format: :json)
end

json.array!(@participations) do |participation|
  json.extract! participation, :id, :publication_id, :author_id
  json.url participation_url(participation, format: :json)
end

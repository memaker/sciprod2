json.array!(@publications) do |publication|
  json.extract! publication, :id, :title, :pubmed_id, :impact_factor, :date_of_print
  json.url publication_url(publication, format: :json)
end

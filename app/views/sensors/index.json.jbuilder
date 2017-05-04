json.array!(@sensors) do |sensor|
  json.extract! sensor, :id, :name, :location
  json.url sensor_url(sensor, format: :json)
end

json.array!(@measurements) do |measurement|
  json.extract! measurement, :id, :value, :created_at, :sensor_id
  json.url measurement_url(measurement, format: :json)
end

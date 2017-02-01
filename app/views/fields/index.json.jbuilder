json.array!(@fields) do |field|
  json.extract! field, :id, :name, :capacity, :city, :country
  json.url field_url(field, format: :json)
end

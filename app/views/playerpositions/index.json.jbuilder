json.array!(@playerpositions) do |playerposition|
  json.extract! playerposition, :id, :description
  json.url playerposition_url(playerposition, format: :json)
end

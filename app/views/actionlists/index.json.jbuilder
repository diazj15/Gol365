json.array!(@actionlists) do |actionlist|
  json.extract! actionlist, :id, :name
  json.url actionlist_url(actionlist, format: :json)
end

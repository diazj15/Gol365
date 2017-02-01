json.array!(@teams) do |team|
  json.extract! team, :id, :name, :complete_name, :stadium_id, :integer
  json.url team_url(team, format: :json)
end

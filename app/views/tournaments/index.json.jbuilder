json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :name, :country, :startDate, :endDate
  json.url tournament_url(tournament, format: :json)
end

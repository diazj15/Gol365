json.array!(@games) do |game|
  json.extract! game, :id, :home_team, :home_team_result, :visit_team, :visit_team_result, :stadium, :start_date, :datetime, :tournament_id, :integer, :status
  json.url game_url(game, format: :json)
end

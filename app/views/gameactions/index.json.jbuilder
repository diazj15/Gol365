json.array!(@gameactions) do |gameaction|
  json.extract! gameaction, :id, :action_id, :game_id, :team_id, :minute, :payer_id, :comments, :half_number
  json.url gameaction_url(gameaction, format: :json)
end

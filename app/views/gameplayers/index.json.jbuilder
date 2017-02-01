json.array!(@gameplayers) do |gameplayer|
  json.extract! gameplayer, :id, :idgame, :iteam, :player_id
  json.url gameplayer_url(gameplayer, format: :json)
end

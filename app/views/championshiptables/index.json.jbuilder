json.array!(@championshiptables) do |championshiptable|
  json.extract! championshiptable, :id, :pg, :wg, :tg, :lg, :sg, :rg, :gd, :pts
  json.url championshiptable_url(championshiptable, format: :json)
end

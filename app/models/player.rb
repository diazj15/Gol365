class Player < ActiveRecord::Base

	has_many :gameplayers

	enum position_values: { "Portero" => 0, "Defensa" => 1, "Medio Campo" => 2, "Atacante" => 3 }

	def getteamplayers(team_id)
    	return Player.all.where(team_id: team_id).order(:name)
  	end
end

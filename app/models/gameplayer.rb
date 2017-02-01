class Gameplayer < ActiveRecord::Base
	belongs_to :game
	belongs_to :player
	def getstartplayers(game_id, team_id)
    	return Gameplayer.where("iteam = " + team_id.to_s + " AND idgame = " + game_id.to_s + " AND playertype = 'Starter'").order(:position)
  	end

	def getsubplayers(game_id, team_id)
    	return Gameplayer.all.where(iteam: team_id, idgame: game_id, playertype: 'Sub').order(:position)
  	end

	def getcurrentplayers(game_id)
		return Gameplayer.joins(:player).select('players.name').order('players.name')
    	#return Gameplayer.where("idgame = " + game_id.to_s).order(:iteam, :position).joins(:Player)
  	end

end

class Game < ActiveRecord::Base
	has_many :gameplayers
	enum status_value: { "No Iniciado" => 0, "En Progreso" => 1, "Terminado" => 2 }

	def getcurentgames(gamedate)
    	#	  + (gamedate).to_s) #+ " AND game_date <= " + (gamedate + 7).to_s)
    	return Game.where("game_date between (?) and (?)", gamedate - 5, gamedate + 6).order(:status)

				
  	end	
end

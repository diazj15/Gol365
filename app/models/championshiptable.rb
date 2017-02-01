class Championshiptable < ActiveRecord::Base

	def deletetable(championship_id, team_id)
      @table = Championshiptable.all.where(championship_id: championship_id, team_id: team_id)

      @table.each do |game|
      	game.destroy
      end
  	end  
end

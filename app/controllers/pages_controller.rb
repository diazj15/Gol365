class PagesController < ApplicationController
  def home

  	@NewsLimit = 20

  	if params[:championship]
		@generaltable = Championshiptable.where(category: params[:championship]).order(pts: :desc, gd: :desc, sg: :desc)
		@news_main = News.where("category = 'Main'").where("championship = ?", params[:championship]).order(updated_at: :desc).first(@NewsLimit)
		@news_team_positions = News.where("category = 'Team Positions'").where("championship = ?", params[:championship]).order(updated_at: :desc)
		@news_previous_games = News.where("category = 'Previous Games'").where("championship = ?", params[:championship]).order(updated_at: :desc)
		@news_next_games = News.where("category = 'Next Games'").where("championship = ?", params[:championship]).order(updated_at: :desc)
		@news_top_scorers = News.where("category = 'Top Scorers'").where("championship = ?", params[:championship]).order(updated_at: :desc)
		@news_top_goals = News.where("category = 'Top Goals'").where("championship = ?", params[:championship]).order(updated_at: :desc)
		@news_day_like_today = News.where("category = 'A day like today'").where("championship = ?", params[:championship]).order(updated_at: :desc).first(1)
		@news_know_better_to = News.where("category = 'Know better to'").where("championship = ?", params[:championship]).order(updated_at: :desc).first(1)
		@news_things_we_learned = News.where("category = '3 things we learned'").where("championship = ?", params[:championship]).order(updated_at: :desc).first(1)
		@news_player_week = News.where("category = 'Player of the week'").where("championship = ?", params[:championship]).order(updated_at: :desc).first(1)
	else
		@generaltable = Championshiptable.where(category: Tournament.category_values["Primera"]).order(pts: :desc, gd: :desc, sg: :desc)

		@start_date = Date.today - 5
		@end_date = Date.today + 5

		@games = Game.where(:game_date => @start_date.beginning_of_day..@end_date.end_of_day).order(:status)

		@news_main = News.where("category = 'Main'").order(updated_at: :desc).first(@NewsLimit)
		@news_next_games = News.where("category = 'Next Games'").order(updated_at: :desc)
		@news_previous_games = News.where("category = 'Previous Games'").order(updated_at: :desc)
		@news_team_positions = @news_next_games
		@news_top_scorers = @news_next_games
		@news_top_goals = News.where("category = 'Top Goals'").order(updated_at: :desc).first(1)
		@news_day_like_today = News.where("category = 'A day like today'").order(updated_at: :desc).first(1)
		@news_know_better_to = News.where("category = 'Know better to'").order(updated_at: :desc).first(1)
		@news_things_we_learned = News.where("category = '3 things we learned'").order(updated_at: :desc).first(1)
		@news_player_week = News.where("category = 'Player of the week'").order(updated_at: :desc).first(1)
	end
  end
end
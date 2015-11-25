class PagesController < ApplicationController
  def home

  	@NewsLimit = 20

  	if params[:championship]
		@news_main = News.where("category = 'Main'").where("championship = ?", params[:championship]).order(updated_at: :desc).first(@NewsLimit)
		@news_team_positions = News.where("category = 'Team Positions'").where("championship = ?", params[:championship]).order(updated_at: :desc)
		@news_next_games = News.where("category = 'Next Games'").where("championship = ?", params[:championship]).order(updated_at: :desc)
		@news_top_scorers = News.where("category = 'Top Scorers'").where("championship = ?", params[:championship]).order(updated_at: :desc)
		@news_day_like_today = News.where("category = 'A day like today'").where("championship = ?", params[:championship]).order(updated_at: :desc).first(1)
		@news_know_better_to = News.where("category = 'Know better to'").where("championship = ?", params[:championship]).order(updated_at: :desc).first(1)
		@news_things_we_learned = News.where("category = '3 things we learned'").where("championship = ?", params[:championship]).order(updated_at: :desc).first(1)
		@news_player_week = News.where("category = 'Player of the week'").where("championship = ?", params[:championship]).order(updated_at: :desc).first(1)
	else
		@news_main = News.where("category = 'Main'").order(updated_at: :desc).last(@NewsLimit)
		@news_next_games = News.where("category = 'Next Games'").order(updated_at: :desc)
		@news_team_positions = @news_next_games
		@news_top_scorers = @news_next_games
		@news_day_like_today = News.where("category = 'A day like today'").order(updated_at: :desc).first(1)
		@news_know_better_to = News.where("category = 'Know better to'").order(updated_at: :desc).first(1)
		@news_things_we_learned = News.where("category = '3 things we learned'").order(updated_at: :desc).first(1)
		@news_player_week = News.where("category = 'Player of the week'").order(updated_at: :desc).first(1)
	end
  end
end
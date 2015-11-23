class PagesController < ApplicationController
  def home

  	@NewsLimit = 20

  	if params[:championship]
		@news_main = News.where("category = 'Main'").where("championship = ?", params[:championship]).order(updated_at: :desc).last(@NewsLimit)
		@news_secondary = News.where("category = 'Secondary'").where("championship = ?", params[:championship]).order(updated_at: :desc).last(@NewsLimit)
		@news_day_like_today = News.where("category = 'A day like today'").where("championship = ?", params[:championship]).order(updated_at: :desc).last(1)
		@news_know_better_to = News.where("category = 'Know better to'").where("championship = ?", params[:championship]).order(updated_at: :desc).last(1)
		@news_things_we_learned = News.where("category = '3 things we learned'").where("championship = ?", params[:championship]).order(updated_at: :desc).last(1)
		@news_player_week = News.where("category = 'Player of the week'").where("championship = ?", params[:championship]).order(updated_at: :desc).last(1)
	else
		@news_main = News.where("category = 'Main'").order(updated_at: :desc).last(@NewsLimit)
		@news_secondary = News.where("category = 'Secondary'").order(updated_at: :desc).last(1)
		@news_day_like_today = News.where("category = 'A day like today'").order(updated_at: :desc).last(1)
		@news_know_better_to = News.where("category = 'Know better to'").order(updated_at: :desc).last(1)
		@news_things_we_learned = News.where("category = '3 things we learned'").order(updated_at: :desc).last(1)
		@news_player_week = News.where("category = 'Player of the week'").order(updated_at: :desc).last(1)
	end
  end
end

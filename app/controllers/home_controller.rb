class HomeController < ApplicationController
	def index
	end
	def date_search
		@items = Item.where( yoc: params[:date] )
		render template: 'items/index'
	end
	def style_search
		@items = Item.where( style: params[:style] )
		render template: 'items/index'
	end
	def size_search
		@items = Item.where( size: params[:size] )
		render template: 'items/index'
	end
	def medium_search
		@items = Item.where( medium: params[:medium] )
		render template: 'items/index'
	end
end

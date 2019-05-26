class StaticPagesController < ApplicationController
	def index
		@movie = Movie.all 
	end
end

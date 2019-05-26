class MoviesController < ApplicationController
	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.valid? 
			@movie.save 
			redirect_to root_path
		else 
			render :new, status: :unprocessable_entity
		end
	end

	def show
		@movie = Movie.all
	end

	private 

	def movie_params
		params.require(:movie).permit(:title, :comment)
	end
end

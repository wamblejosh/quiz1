class Movie < ApplicationRecord
	validates :title, presence: :true
	validates :comment, presence: :true 
end

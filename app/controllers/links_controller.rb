class LinksController < ApplicationController

	def index
	end

	def create
		
		generate_string = SecureRandom.urlsafe_base64(length_of_string)
		l = Link.new
		l.random_string = generate_string
		l.visits = 0
		l.link = params.require(:link).permit(:link)
	end

	def preview
	end


	def go
	end

end
class LinksController < ApplicationController

	def index
	end

	def create
		@generate_string = SecureRandom.urlsafe_base64(10)
		l = Link.new
		# l.link = params.require(:link).permit(params[:link]) ===> this doesn't work
		l.link = params[:link][:link]
		l.random_string = generate_string #l[:random_string]
		l.visits = 0
		l.save

		l=l.random_string
		# redirect_to "/go/#{generate_string}/preview"
		redirect_to preview_path(@generate_string)
	end

	def preview
		# @link = 
		# Link.find(#) would get you the hash link with id #
	end


	def redirect
	end

	def edit
		# t = Link.find(#)
		# t.random_string = new random_string
		# t.save
		# validates_length_of :random_string, :minimum => 10
	end

	def destroy
		# t = Link.find(#)
		# t.destroy
	end

end
class LinksController < ApplicationController

	def index
	end

	def create
		generate_string = SecureRandom.urlsafe_base64(10)
		l = Link.new
		l.link = params[:link][:link]
		l.random_string = generate_string
		l.visits = 0
		l.save

		redirect_to preview_path(generate_string)
	end

	def preview
		gen_string = params[:random_string]
        @l = Link.where(random_string: gen_string).first

        render :preview
		# Go to <%= link_to "localhost:3000/go/#{@l.random_string}", "/go/#{@l.random_string}", method: :patch %> to visit your URL
	end


	def redirect
		# redirect_to_url(Link.link.last)
		# @link = Link.find(params[:id]).link
		gen_string = params[:random_string]
        row = Link.where(random_string: gen_string).first
        redirect_to "#{row.link}"
		# binding.pry
		
		# binding.pry
		# row = Link.where(random_string: generate_string).first
		# binding.pry
		# # row.visits += 1
		# # row.save
		# binding.pry
		# redirect_to "#{row.link}"
		# binding.pry

   # ritl = params[:ritlyurl]
   #              link = Link.where(ritly_url: ritl).first
                
   #              link.save

   #              redirect_to "#{link.full_url}"


   


	end

	def edit
		# t = Link.find(#)
		# t.random_string = new random_string
		# t.save
		# validates_length_of :random_string, :minimum => 10
		# validates_presence_of :status ...equal to true or fales
	end

	def destroy
		# t = Link.find(#)
		# t.destroy
	end

	def all
		@links = Link.all
	end

end
class LinksController < ApplicationController

	def index
	end

	def all
		@links = Link.all
	end

	def create
		generate_string = SecureRandom.urlsafe_base64(10)
		l = Link.new
		l.full_link = params[:link][:full_link]
		l.random_string = generate_string
		l.visits = 0
		l.save

		redirect_to preview_path(generate_string)
	end

	def preview
		gen_string = params[:placeholdervariableidontcare]
        @link = Link.where(random_string: gen_string).take
	end

	def redirect
		gen_string = params[:placeholdervariableidontcare]
        row = Link.where(random_string: gen_string).take
       	row.increment(:visits, by = 1)
        row.save

        redirect_to "#{row.full_link}"

	end

	def edit
		# t = Link.find(#)
		# t.random_string = new random_string
		# t.save
		# validates_length_of :random_string, :minimum => 10
		# validates_presence_of :status ...equal to true or fales
	end

	def delete
		link_to_delete = params[:id]
        Link.destroy(link_to_delete)
		redirect_to all_path
	end

	

end
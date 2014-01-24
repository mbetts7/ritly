Controller
links
	def index
		@link = Link.new
	end
	def create
		new_link = params.require(:link).permit(:link)
		#SecureRandom.urlsafe_base64(length_of_string) and stuff into :random_string
		#set visits = 0
		animal = Animal.create(new_animal)
		redirect_to animal_path(animal.id) #could refactor to simply ===> redirect_to animal
	end
	def preview

	end
	def go

	end

Model
link
	- link
	- random string
	- visits
rails g model link link random_string visits

Views
index.html.css -- links
	- form for typing in url they want shortened
	- 
go
- 
preview




STORY 1: Visitors to Ritly will be able to request a randomly generated code for their URL link and save it to the database.

STORY 2: Visitors to Ritly can go to localhost:3000/go/random_generated_code and the application will redirect them to the matched link in the database.

STORY 3: Visitors to Ritly can go to localhost:3000/go/random_generated_code/preview and preview the URL to which they would be redirected.
	- Make the preview page contain a preview of the content at the url, not just the target url.

Features:
- Make the preview or url show page contain the number of times someone has used that redirect.
- prepopulate https://


The Routes
Think about the different pages and actions that exist on Ritly.

Make sure you have a root
Allow new URLs to be created and displayed
URL redirection and URL previewing are separate actions
Make sure you know the purpose of every entry in the result of rake routes
The Views

show.html.erb

Visitors are redirected to the show page after they request a randomly generated code for their URL link. This view will display the random code that was generated: "Your code is: random_code" Go to localhost:3000/go/random_code to visit your URL.

DRY up your views by using partials. Make this a habit.

Generating a Random String

Use SecureRandom.urlsafe_base64(length_of_string) to help you generate a random string.

Bonus:



Allow the user creating the redirect to give a string to use as the shortened string. (localhost:3000/go/my_string redirects to my_url). Make sure to think about possible problems this could cause.



Make everything gorgeous.
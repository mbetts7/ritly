Features to add:
- fix edit links and iframe
- don't duplicate urls
- Make the preview or url show page contain the number of times someone has used that redirect.


QUESTIONS:
- does preview variable have to be same as redirect variable since it is linking to that?
- http or https?
- why does iframe not work
- why does edit page not work

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
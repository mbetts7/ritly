Ritly::Application.routes.draw do
  
  root 'links#index'

  # generate new link and show preview
  get '/go/:placeholdervariableidontcare/preview', to: 'links#preview', as: :preview

  post '/go', to: 'links#create'

  #localhost:3000/go/random_generated_code/

  get '/go/:placeholdervariableidontcare', to: 'links#go', as: :redirect

end

Ritly::Application.routes.draw do
  
  root 'ritly#index'

  #localhost:3000/go/random_generated_code/preview 

  

  # generate new link
  get '/go/:random_string', to: 'links#new'#, as: :new_links

  post '/go', to: 'links#create'

  #localhost:3000/go/random_generated_code/

  get 'animals/:id', to: 'animals#show', as: :animal


end

Ritly::Application.routes.draw do
  
  root 'links#index'

  # generate new link and show preview
  get '/go/:random_string/preview', to: 'links#preview', as: :preview

  post '/', to: 'links#create'

  #localhost:3000/go/random_generated_code/

  get '/go/:random_string', to: 'links#go', as: :go

end

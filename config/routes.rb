Ritly::Application.routes.draw do
  
  root 'links#index'

  # generate new link and show preview
  get '/go/:placeholdervariableidontcare/preview', to: 'links#preview', as: :preview

  post '/go', to: 'links#create'

  patch '/go/:placeholdervariableidontcare', to: 'links#redirect', as: :redirect
  get '/go/:placeholdervariableidontcare', to: 'links#redirect'

  delete '/go/:id', to: 'links#delete'  

  get '/all', to: 'links#all'

end

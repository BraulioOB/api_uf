Rails.application.routes.draw do
  get '/clients/:u/consumed', to: 'clients#show', as: 'user_requests'
  post '/clients/register', to: 'clients#create', as: 'sign_in'

  get '/uf/:d', to: 'inflation_adjusts#show', as: 'uf'
end

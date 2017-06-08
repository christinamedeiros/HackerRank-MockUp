Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :challenges
  root 'challenges#index'

get '/like' => 'challenges#like'

end

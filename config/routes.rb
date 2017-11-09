Rails.application.routes.draw do

  get 'account/sign_in' => 'sessions#new'
  post 'account/sign_in' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'account/sign_up' => 'applicants#new'
  post 'account/sign_up' => 'applicants#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html\
  root :to => 'sessions#new'
end

Rails.application.routes.draw do
  root 'home#index'

  devise_for :appointments
  
  devise_for :providers, controllers: {
    sessions: 'provider/sessions'
  }
  
  devise_for :associates, controllers: {
    sessions: 'associates/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

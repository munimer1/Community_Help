Rails.application.routes.draw do
  devise_for :appointments
  devise_for :providers
  devise_for :associates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

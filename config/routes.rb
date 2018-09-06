Rails.application.routes.draw do
  get 'forecast/index'
  get 'address/index'

  root 'forecast#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

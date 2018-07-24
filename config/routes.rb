Rails.application.routes.draw do
  resources :area_comuns
  get 'home/index'

  resources :tipo_area_comuns
  resources :conta
  resources :agencia

  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

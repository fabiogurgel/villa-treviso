Rails.application.routes.draw do

  resources :reservas
  # devise_for :usuarios
  devise_for :usuarios, controllers: {
      registrations: 'usuario/registrations'
    }

  resources :tipo_usuarios
  # match 'tipo_usuarios', to: 'tipo_usuarios#new', via: [:get, :post]
  # match 'tipo_usuarios/create', to: 'tipo_usuarios#create', via: [:get, :post]

  resources :situacao_reservas
  resources :periodo_reservas
  resources :area_comuns
  get 'home/index'

  resources :tipo_area_comuns

  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

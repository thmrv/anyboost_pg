Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")

  root to: "default#welcome"

  post   '/component/render/extras',  to: 'util/ssr#extras',  as: :component_render_extras
  post   '/component/render/service',  to: 'util/ssr#service',  as: :component_render_service

  get '/dashboard', to: 'dashbord#welcome', as: :dashboard
  get '/dashboard/orders', to: 'dashbord#orders', as: :orders
  get '/dashboard/account', to: 'dashbord#account', as: :account
  get '/dashboard/order', to: 'dashbord#order', as: :order

  get '/support', to: 'support#welcome', as: :support

  ###
end

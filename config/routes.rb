Rails.application.routes.draw do
  resources :daily_report_equipment_usages
  resources :daily_report_resource_allocations
  resources :stockings
  resources :service_responsibles
  resources :daily_service_conditions
  resources :daily_report_services
  resources :daily_reports
  resources :survey_media
  resources :media
  resources :surveys
  resources :service_orders
  resources :requirements
  resources :departments
  resources :addresses
  resources :responsibles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

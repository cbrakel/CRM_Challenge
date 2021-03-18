Rails.application.routes.draw do
  get "/", to: "customer#index"
  get "/customers/alphabetized", to: "customer#sort"
  get "/customers/missing_email", to: "customer#missing_email"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

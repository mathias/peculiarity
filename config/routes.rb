Peculiarity::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  resources :beta_sign_ups, :only => ["new", "create", "show"]
  root :to => "pages#index"
  match "about" => "pages#about"
end

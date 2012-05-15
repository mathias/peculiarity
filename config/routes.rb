Peculiarity::Application.routes.draw do

  devise_for :users

  resources :beta_sign_ups, :only => ["new", "create"]
  root :to => "pages#index"
  match "about" => "pages#about"
  match "beta_sign_up/confirm" => "beta_sign_ups#confirm"

  # Catch everything else and throw a custom 404 page:
  match '*path' => 'pages#missing_page'
end

Rails.application.routes.draw do
  devise_scope :user do
      get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
      get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
    end
root 'welcome#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/auth/linkedin/callback' => 'sessions#create'

resources :opportunities

# get 'profiles/:id/edit', to: 'profiles#edit', as: "edit_profile"
# put 'profiles/:id', to: 'profiles#update'

resources :profiles
end

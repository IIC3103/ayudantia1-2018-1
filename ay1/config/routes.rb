Rails.application.routes.draw do
 #resources :users, only: [:create]
 #resources :users, except: [:create]
  resources :users, path: 'usuarios' do
    collection do
      get "new_route_without_specific_user"
    end
    member do
      get "new_route_with_specific_user"
    end
  end
end

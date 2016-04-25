IdeaApp::Application.routes.draw do
 get 'admin' => 'admin#index'

controller :sessions do
 get 'login' => :new
 post 'login' => :create
 delete 'logout' => :destroy
end

get "sessions/create"
get "sessions/destroy"
resources :users
resources :ideas


end

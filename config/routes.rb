Rails.application.routes.draw do
  devise_for :users
  resources :posts do
  end
  root'posts#index'
  get '/posts/:id/vote' => 'votes#update', :as => 'post_vote'
end

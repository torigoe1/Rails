Rails.application.routes.draw do
  get 'users/index'
  get 'posts',to:'posts#post'
  get 'posts/new',to:'users#new'
  post 'posts/create',to:'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'users/index'
  get 'posts',to:'posts#post'
  get 'posts/new',to:'users#new'
  get 'posts/:id',to:'users#show'
  post 'posts/create',to:'users#create'
  get 'posts/:id/edit',to:'users#edit'
  post 'posts/:id/update',to:'users#update'
  post 'posts/:id/destroy',to:'users#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

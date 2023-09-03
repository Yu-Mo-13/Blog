Rails.application.routes.draw do
  get 'profiles/' => 'profiles#index'
  get 'profiles/edit' => 'profiles#edit'
  post 'profiles/post' => 'profiles#post'
  get 'snslinks/' => 'snslinks#index'
  get 'snslinks/edit' => 'snslinks#edit'
  post 'snslinks/post' => 'snslinks#post'
  get '/' => 'article#index'
  get 'article/new' => 'article#new'
  get 'article/:id' => 'article#detail'
  post 'article/post' => 'article#post'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

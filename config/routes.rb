Rails.application.routes.draw do
  resources :images
  resources :tags
  resources :albums
  resources :posts
  resources :users

  namespace 'utils' do
    get 'image_converter_page'
    post 'convert_image_to_base'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  scope '/api/v1' do
    
    resources :categories
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

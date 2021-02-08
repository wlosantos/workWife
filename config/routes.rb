Rails.application.routes.draw do

  devise_for :admins
  
  root 'home#index'
  get '/admins', to: 'admins#index'

  scope module: 'admins' do
    resources :registers
  end

end

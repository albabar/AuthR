Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "oauth_callbacks" }
  root 'pages#home'
  get 'premium' => 'pages#premium'

end

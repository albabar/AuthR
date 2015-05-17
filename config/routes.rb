Rails.application.routes.draw do

  root 'pages#home'
  get 'premium' => 'pages#premium'

end

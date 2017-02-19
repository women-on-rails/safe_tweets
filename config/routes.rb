Rails.application.routes.draw do
  root 'messages#index'

  get '/messages/unsafe', to: 'messages#unsafe', as: "unsafe_messages"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

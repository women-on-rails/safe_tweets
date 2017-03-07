Rails.application.routes.draw do
  root 'messages#index'

  put '/unsafe_messages/:id/create', to: 'unsafe_messages#create', as: 'mark_as_unsafe'

  put '/safe_messages/:id/create', to: 'safe_messages#create', as: 'mark_as_safe'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'messages#index'

  put "/messages/:id/unsafe", to: "messages#is_unsafe", as: "message_is_unsafe"

  put "/messages/:id/safe", to: "messages#is_safe", as: "message_is_safe"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

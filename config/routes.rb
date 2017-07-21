Rails.application.routes.draw do
 # resources :plants

  concern :api_base do
    resources :plants, concerns: :paginatable
  end

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  namespace :v1 do
    concerns :api_base
  end

end

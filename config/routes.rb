Rails.application.routes.draw do
  resources :widgets do
    member do
      get 'embed/:url', as: :embed, to: 'embedded_widgets#embed'
    end
  end
  root to: 'widgets#index'
end

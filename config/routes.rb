Rails.application.routes.draw do

  root to: "cocktails#index"
  resources :cocktails, except: [:edit, :update, :destroy] do
    resources :doses, except: [:index, :show, :edit, :update, :destroy]
  end
  resources :doses, only: :destroy
end

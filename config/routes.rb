Rails.application.routes.draw do
  resources :locations do
    get 'crowd_reports', to: 'locations#crowd_reports'
  end

Rails.application.routes.draw do
  root "locations#index" # 또는 너의 앱에서 첫 화면으로 쓰고 싶은 controller#action
  resources :locations
  resources :crowd_reports
end

  resources :crowd_reports do
    resources :comments, only: [:create]
  end
end
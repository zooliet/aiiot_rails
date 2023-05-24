Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :motors
  get 'tracking(/:page)', to: 'tracking#index', as: 'tracking'
  get 'archive', to: 'archive#index', as: 'archive'

  direct 'docs_archive' do
    'https://aiiot.ssu.ac.kr/docs/pat/'
  end

  direct 'streamlit' do
    # "https://aiiot.ssu.ac.kr/streamlit/tracking"
    if Rails.env == 'development'
      'http://localhost:8501/'
    else
      'https://aiiot.ssu.ac.kr/streamlit/'
    end
  end

  direct :zoolu do
    if Rails.env == 'development'
      'http://localhost:3000'
    else
      'https://zoolu.co.kr'
    end
  end

  # Defines the root path route ("/")
  root 'home#index'
end

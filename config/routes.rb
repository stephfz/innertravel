InnerTravel::Application.routes.draw do
  resources :issues


  resources :tripdates


  resources :trips

   root :to => 'welcome#index'

   match "/search" => 'search#index'

  
end

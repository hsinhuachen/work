Rails.application.routes.draw do
  root 'welcome#index'
  resources :projects, only: [:index, :show]
  get "/about", to: "about#index"
  get "/projects/category/:name", to: "projects#index", :as => :category


  # scope "/:locale" do
 	# root 'welcome#index'
	# resources :projects, only: [:index, :show]
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

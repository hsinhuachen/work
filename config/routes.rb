Rails.application.routes.draw do
  root 'welcome#index'
  resources :projects, only: [:index, :show]

  # resources :tags do
  # 	resources :projects, only: [:index, :show]
  # end

  # scope "/:locale" do
 	# root 'welcome#index'
	# resources :projects, only: [:index, :show]
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

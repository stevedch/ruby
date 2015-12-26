Blog::Application.routes.draw do

	# namespace :seccion_articles do
	# resources :articles do
	# 	resources :comments
	# end
	# end

	resources :articles do
		resources :comments
	end


	# namespace :wellcome do
		# resources :about
	# end

	root to: 'welcome#index'

	get 'about'   => 'welcome#about',  as: :welcome_about
	get 'contact' => 'welcome#contact', as: :welcome_contact


end


class AdminController < ApplicationController
	namespace :admin do
	  resources :artists, :comments, :festivals, :users, :concerts
	end

	layout "admin"



end
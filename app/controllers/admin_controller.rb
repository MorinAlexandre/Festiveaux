class AdminController < ApplicationController
	layout "admin"
	before_action :authenticate_user!
	before_filter :set_locale

	def set_locale
		I18n.locale=params[:locale]
	end

	def index
		@festivals = Festival.all
		@artists = Artist.all
		@comments = Comment.all
		@concerts = Concert.all
	end
end
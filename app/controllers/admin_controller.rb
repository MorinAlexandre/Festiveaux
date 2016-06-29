class AdminController < ApplicationController
	layout "admin"
	before_action :authenticate_user!
  def index
		@festivals = Festival.all
		@artists = Artist.all
		@comments = Comment.all
		@concerts = Concert.all
	end
end
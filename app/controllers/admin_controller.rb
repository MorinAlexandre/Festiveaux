class AdminController < ApplicationController
	layout "admin"

  def index
		@festivals = Festival.all
		@artists = Artist.all
		@comments = Comment.all
		@concerts = Concert.all
	end
end
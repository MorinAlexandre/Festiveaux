class HomeController < ApplicationController
  def index
    @festivals = Festival.all
    @artists = Artist.all
  end
end
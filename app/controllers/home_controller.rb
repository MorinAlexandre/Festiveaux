class HomeController < ApplicationController
  before_filter :set_locale

  def set_locale
    I18n.locale=params[:locale]
  end

  def index
    @festivals = Festival.all
    @artists = Artist.all
  end
end
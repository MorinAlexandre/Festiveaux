class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale

  def set_locale
    I18n.locale=params[:locale]
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = 'Vous n\'êtes pas autorisé à acceder à cette page.'
    if request.env['HTTP_REFERER'].present?
      redirect_to :back
    else
      redirect_to root_path
    end
  end
end

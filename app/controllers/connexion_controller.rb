class ConnexionController < ApplicationController
  layout 'connexion'
  skip_before_action :verify_authenticity_token


  def index
    @user = User.new
  end

  def login
    @users = User.all
    if @users.any?
      @users.each do |u|
        respond_to do |format|
          if params['username'] == 'test' && params['password'] == 'test'
            format.html { redirect_to  admin_accueil_path }
          else
            format.html { redirect_to connexion_path, notice: 'Identifiant ou mot de passe incorrect' }
          end
        end
      end
    else
      respond_to do |format|
          format.html { redirect_to admin_accueil_path }
      end
    end
  end
end
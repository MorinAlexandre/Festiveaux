class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :update]

  # GET /artists
  # GET /artists.json
  def index
    @artists = Artist.paginate(page: params[:page], per_page:6)
  end

  # GET /artists/1
  # GET /artists/1.json
  def show
    @concerts = @artist.concerts.paginate(page: params[:page], per_page:6)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_params
      params.require(:artist).permit(:name, :description, :image, :remote_image_url)
    end
end

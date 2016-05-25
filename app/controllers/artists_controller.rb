class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show]

  # GET /artists
  # GET /artists.json
  def index
    @artists = Artist.paginate(page: params[:page], per_page:6)
  end

  # GET /artists/1
  # GET /artists/1.json
  def show
    @concerts = @artist.concerts.paginate(page: params[:page], per_page:3)
  end

  # GET /artists/new
  def new
    @artist = Artist.new
  end

  # GET /artists/1/edit
  def edit
  end

  # POST /artists
  # POST /artists.json
  def create
    @artist = Artist.new(artist_params)

    respond_to do |format|
      if @artist.save
        format.html { redirect_to admin_artists_path, notice: 'Artiste créé !'}
        format.json { render :show, status: :created, location: @artist }
      else
        format.html { render :new }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artists/1
  # PATCH/PUT /artists/1.json
  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to admin_artists_path, notice: 'Artiste modifié !' }
        format.json { render :show, status: :ok, location: @artist }
      else
        format.html { render :edit}
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
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

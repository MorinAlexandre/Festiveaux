class FestivalsController < ApplicationController
  before_action :set_festival, only: [:show]

  # GET /festivals
  # GET /festivals.json
  def index
    @festivals = Festival.paginate(page: params[:page], per_page:6)
  end

  # GET /festivals/1
  # GET /festivals/1.json
  def show
    @concerts = @festival.concerts.paginate(page: params[:page], per_page:3)
    @comment = Comment.new
    @comments = @festival.comments.paginate(page: params[:page], per_page:5)
  end

  # GET /festivals/new
  def new
    @festival = Festival.new
  end

  # GET /festivals/1/edit
  def edit
  end

  # POST /festivals
  # POST /festivals.json
  def create
    @festival = Festival.new(festival_params)

    respond_to do |format|
      if @festival.save
        format.html { redirect_to admin_festivals_path, notice: 'Festival crée !'}
        format.json { render :show, status: :created, location: @festival }
      else
        format.html { render :new, notice: 'Festival non-crée !', status: 0 }
        format.json { render json: @festival.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /festivals/1
  # PATCH/PUT /festivals/1.json
  def update
    respond_to do |format|
      if @festival.update(festival_params)
        format.html { redirect_to admin_festivals_path, notice: 'Festival modifié !'}
        format.json { render :show, status: :ok, location: @festival }
      else
        format.html { render :edit }
        format.json { render json: @festival.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_festival
      @festival = Festival.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def festival_params
      params.require(:festival).permit(:name, :place, :startDate, :endDate, :description, :link, :image, :remote_image_url)
    end
end

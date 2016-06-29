module Admin
  class ConcertsController < AdminController
  before_action :set_concert, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /concerts
  # GET /concerts.json
  def index
    @concerts = Concert.paginate(page: params[:page], per_page:10)
  end

  # GET /concerts/1
  # GET /concerts/1.json
  def show
  end

  # GET /concerts/new
  def new
    @concert = Concert.new
  end

  # GET /concerts/1/edit
  def edit
  end

  # POST /concerts
  # POST /concerts.json
  def create
    @concert = Concert.new(concert_params)

    respond_to do |format|
      if @concert.save
        format.html { redirect_to admin_concerts_path, notice: 'Concert créé !'}
        format.json { render :show, status: :created, location: @concert }
      else
        format.html { render :new }
        format.json { render json: @concert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concerts/1
  # PATCH/PUT /concerts/1.json
  def update
    respond_to do |format|
      if @concert.update(concert_params)
        format.html { redirect_to admin_concerts_path, notice: 'Concert modifié !'}
        format.json { render :show, status: :ok, location: @concert }
      else
        format.html { render :edit }
        format.json { render json: @concert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concerts/1
  # DELETE /concerts/1.json
  def destroy
    @concert.destroy
    respond_to do |format|
      format.html { redirect_to admin_concerts_path, notice: 'Concert effacé'}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concert
      @concert = Concert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def concert_params
      params.require(:concert).permit(
          :hour,
          :festival_id,
          :artist_id,
      )
    end
  end
end

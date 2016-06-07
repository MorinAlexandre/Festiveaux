class FestivalsController < ApplicationController
  before_action :set_festival, only: [:show, :update]

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

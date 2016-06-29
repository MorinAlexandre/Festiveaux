module Admin
  class CommentsController < AdminController
  before_action :set_comment, only: [:show, :edit, :destroy]
  before_action :authenticate_user!

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.paginate(page: params[:page], per_page:10)
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to admin_comments_path, notice: 'Commentaire effacé !'}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :opinion,:festival_id)
    end
  end
end

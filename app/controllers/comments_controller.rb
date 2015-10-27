class CommentsController < ApplicationController

  def new
    @choice = Choice.find(params[:choice_id])
    @comment = @choice.comments.new
  end

  def create
    @choice = Choice.find(params[:choice_id])
    @comment = @choice.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      render :new
    end

  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
